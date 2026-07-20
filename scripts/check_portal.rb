#!/usr/bin/env ruby

require "yaml"
require "date"

Encoding.default_external = Encoding::UTF_8

ROOT = File.expand_path("..", __dir__)
PUBLIC_FILES = Dir[File.join(ROOT, "*.md"), File.join(ROOT, "templates", "*.md")].reject do |path|
  File.basename(path) == "README.md"
end
errors = []

def front_matter(path)
  text = File.read(path)
  parts = text.split(/^---\s*$\n?/, 3)
  return nil unless parts.length == 3

  YAML.safe_load(parts[1])
end

unless File.exist?(File.join(ROOT, "index.md"))
  errors << "index.md ausente"
end

if File.exist?(File.join(ROOT, "index.html"))
  errors << "index.html compilado não deve coexistir com index.md"
end

%w[_layouts/default.html _layouts/page.html assets/css/portal.css _data/portal.yml].each do |relative|
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
current_week = portal_data.dig("cycle", "current_week")
unless current_week.is_a?(Integer) && current_week.between?(1, 13)
  errors << "_data/portal.yml: current_week inválida"
end

today = Date.today
cycle_start = Date.strptime(portal_data.dig("cycle", "start"), "%d/%m/%Y")
cycle_end = Date.strptime(portal_data.dig("cycle", "end"), "%d/%m/%Y")

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
  puts "OK: estrutura, front matter, links relativos e referências temporais"
  exit 0
end

warn errors.map { |error| "ERRO: #{error}" }.join("\n")
exit 1
