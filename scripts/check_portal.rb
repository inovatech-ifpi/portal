#!/usr/bin/env ruby

require "yaml"
require "date"

Encoding.default_external = Encoding::UTF_8

ROOT = File.expand_path("..", __dir__)
PUBLIC_FILES = Dir[File.join(ROOT, "*.md"), File.join(ROOT, "en", "*.md"), File.join(ROOT, "templates", "*.md")].reject do |path|
  File.basename(path) == "README.md"
end
errors = []

def front_matter(path)
  text = File.read(path)
  parts = text.split(/^---\s*$\n?/, 3)
  return nil unless parts.length == 3

  metadata = YAML.safe_load(parts[1])
  metadata.is_a?(Hash) ? metadata : nil
rescue Psych::Exception
  nil
end

unless File.exist?(File.join(ROOT, "index.md"))
  errors << "index.md ausente"
end

if File.exist?(File.join(ROOT, "index.html"))
  errors << "index.html compilado não deve coexistir com index.md"
end

%w[_layouts/default.html _layouts/page.html _layouts/hub.html _includes/head.html assets/css/base.css assets/css/hub.css assets/css/showroom.css assets/css/residencia.css _data/estilos.yml _data/portal.yml _data/idiomas.yml].each do |relative|
  errors << "#{relative} ausente" unless File.exist?(File.join(ROOT, relative))
end

PUBLIC_FILES.each do |path|
  relative = path.delete_prefix("#{ROOT}/")
  metadata = front_matter(path)
  errors << "#{relative}: front matter ausente ou inválido" unless metadata.is_a?(Hash)

  text = File.read(path)
  text.scan(/\]\(([^)]+)\)/).flatten.each do |href|
    next if href.start_with?("http", "mailto:", "#") || href.include?("{{")
    next unless href.end_with?(".md")

    errors << "#{relative}: link .md relativo quebra no portal: #{href}"
  end
end

top_level_text = Dir[File.join(ROOT, "*.md")].map { |path| File.read(path) }.join("\n")
{
  "M1 hoje" => "referência temporal vencida",
  "Inception em fechamento" => "fase vencida",
  "Gate técnico (semana atual" => "fase vencida",
  "POC/protótipo" => "critério removido do M1",
  "_(link)_" => "placeholder de link"
}.each do |needle, message|
  errors << "#{message}: #{needle}" if top_level_text.include?(needle)
end

portal_data = YAML.safe_load(File.read(File.join(ROOT, "_data", "portal.yml")))
facts = portal_data.fetch("facts")
projects = portal_data.fetch("projects")
errors << "contagem de residentes diverge dos projetos" unless projects.sum { |project| project.fetch("residents") } == facts.fetch("residents")
errors << "contagem de frentes diverge dos projetos" unless projects.length == facts.fetch("tracks")
slugs = projects.map { |project| project.fetch("slug") }
errors << "slugs duplicados nos projetos" unless slugs.uniq.length == slugs.length
portal_data.fetch("indicators").each do |indicator|
  errors << "indicador sem fato canônico: #{indicator['fact']}" unless facts.key?(indicator.fetch("fact"))
  %w[pt en].each do |lang|
    %w[label detail source].each do |field|
      errors << "indicador sem #{lang}.#{field}" if indicator.dig(lang, field).to_s.empty?
    end
  end
end
translations = YAML.safe_load(File.read(File.join(ROOT, "_data", "idiomas.yml")))
errors << "campos da interface PT/EN divergentes" unless translations.fetch("pt").keys.sort == translations.fetch("en").keys.sort
routes = PUBLIC_FILES.map { |path| front_matter(path)&.fetch("permalink", nil) }.compact
PUBLIC_FILES.each do |path|
  metadata = front_matter(path)
  next unless metadata
  %w[url_pt url_en].each do |field|
    target = metadata[field]
    next unless target
    errors << "#{path}: destino de idioma inexistente: #{target}" unless routes.include?(target)
    counterpart = PUBLIC_FILES.find { |candidate| front_matter(candidate)&.fetch("permalink", nil) == target }
    reverse = field == "url_en" ? "url_pt" : "url_en"
    if counterpart && metadata["layout"] == "hub" && front_matter(counterpart)[reverse] != metadata["permalink"]
      errors << "#{path}: alternância de idioma não recíproca"
    end
  end
end
components = Dir[File.join(ROOT, "_includes", "*.html"), File.join(ROOT, "_layouts", "*.html")]
components.each do |path|
  if File.read(path).match?(/(?:href=["']|\{\{\s*["'])\/?sprint-e\d/)
    errors << "#{path}: link de sprint fixo em componente compartilhado"
  end
end
current_week = portal_data.dig("cycle", "current_week")
total_weeks = portal_data.dig("cycle", "total_weeks")
unless total_weeks.is_a?(Integer) && total_weeks.positive?
  errors << "_data/portal.yml: total_weeks inválido"
end
unless current_week.is_a?(Integer) && total_weeks.is_a?(Integer) && current_week.between?(1, total_weeks)
  errors << "_data/portal.yml: current_week inválida"
end
unless routes.include?(portal_data.dig("cycle", "current_sprint_link"))
  errors << "_data/portal.yml: destino da sprint atual inexistente"
end

today = Date.today
cycle_start = Date.strptime(portal_data.dig("cycle", "start"), "%d/%m/%Y")
cycle_end = Date.strptime(portal_data.dig("cycle", "end"), "%d/%m/%Y")

# Sem isto, todas as checagens abaixo se desligam sozinhas quando o ciclo termina — foi assim
# que o portal envelheceu duas semanas em agosto/2026 sem o validador acusar nada.
if today > cycle_end
  errors << "_data/portal.yml: ciclo encerrado em #{cycle_end.strftime('%d/%m/%Y')} e ainda não foi feito o rebaseline (cycle.end, total_weeks, current_week, weeks)"
end

if today.between?(cycle_start, cycle_end)
  expected_week = ((today - cycle_start).to_i / 7) + 1
  if current_week != expected_week
    errors << "_data/portal.yml: semana atual #{current_week}, esperada #{expected_week} para #{today.strftime('%d/%m/%Y')}"
  end

  expected_start = cycle_start + ((expected_week - 1) * 7)
  expected_end = [expected_start + 4, cycle_end].min
  expected_period = "#{expected_start.strftime('%d')}–#{expected_end.strftime('%d/%m')}"
  current_period = portal_data.dig("cycle", "current_period")
  if current_period != expected_period
    errors << "_data/portal.yml: período atual #{current_period.inspect}, esperado #{expected_period.inspect}"
  end

  current_states = portal_data.fetch("weeks", []).select { |week| week["state"] == "current" }
  unless current_states.length == 1 && current_states.first["number"].to_s == expected_week.to_s
    errors << "_data/portal.yml: apenas a semana #{expected_week} deve ter state current"
  end

  portal_data.fetch("deadlines", []).each do |deadline|
    deadline_date = Date.strptime("#{deadline.fetch('date')}/#{today.year}", "%d/%m/%Y")
    if deadline_date < today
      errors << "_data/portal.yml: prazo vencido ainda listado em deadlines: #{deadline.fetch('title')} (#{deadline.fetch('date')})"
    end
  end
end

if errors.empty?
  puts "OK: estrutura, dados canônicos, idiomas, links e referências temporais"
  exit 0
end

warn errors.map { |error| "ERRO: #{error}" }.join("\n")
exit 1
