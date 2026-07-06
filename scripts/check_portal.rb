#!/usr/bin/env ruby

require "yaml"

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

if errors.empty?
  puts "OK: estrutura, front matter, links relativos e referências temporais"
  exit 0
end

warn errors.map { |error| "ERRO: #{error}" }.join("\n")
exit 1
