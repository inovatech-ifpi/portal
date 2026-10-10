#!/usr/bin/env ruby
# Valida destinos reais no HTML compilado, incluindo links criados por Liquid.
require "nokogiri"
require "uri"
require "yaml"
require "pathname"

# Sem isto, num terminal com locale ASCII o Nokogiri falha no primeiro acento e devolve páginas
# vazias — e o script passava sem verificar nada.
Encoding.default_external = Encoding::UTF_8

root = File.expand_path("..", __dir__)
site = File.expand_path(ARGV.fetch(0))
config = YAML.safe_load(File.read(File.join(root, "_config.yml")))
base = config.fetch("baseurl")
host = URI(config.fetch("url")).host
errors = []
documents = {}
Dir[File.join(site, "**", "*.html")].each do |path|
  documents[path] = Nokogiri::HTML(File.read(path, encoding: "UTF-8"))
end
abort "ERRO: nenhum HTML compilado em #{site}" if documents.empty?
documents.each do |path, doc|
  relative = path.delete_prefix(site)
  if doc.at_css("body").nil? || doc.css("a[href]").empty?
    errors << "#{relative}: página vazia ou ilegível após o parse (#{doc.errors.first})"
    next
  end
  page_url = relative.end_with?("/index.html") ? relative.delete_suffix("index.html") : relative
  doc.css("a[href], img[src], link[href], meta[property='og:image'], meta[name='twitter:image'], [data-lightbox-src]").each do |element|
    attribute = if element["data-lightbox-src"]
      "data-lightbox-src"
    elsif element.name == "img"
      "src"
    elsif element.name == "meta"
      "content"
    else
      "href"
    end
    href = element[attribute]
    next if href.to_s.empty? || href.start_with?("mailto:", "tel:", "data:")
    begin
      uri = URI.join("https://#{host}#{base}#{page_url}", href)
      next unless uri.host == host
      target = URI::DEFAULT_PARSER.unescape(uri.path)
      next unless target == base || target.start_with?("#{base}/")
      target = target.delete_prefix(base)
      target = "/" if target.empty?
      file = File.join(site, target)
      file = File.join(file, "index.html") if File.directory?(file) || target.end_with?("/")
      unless File.file?(file)
        errors << "#{relative}: destino ausente: #{href}"
        next
      end
      if uri.fragment && documents[file]
        id = URI::DEFAULT_PARSER.unescape(uri.fragment)
        errors << "#{relative}: âncora ausente: #{href}" unless documents[file].xpath('//*[@id=$id]', nil, id: id).any?
      end
    rescue URI::InvalidURIError
      errors << "#{relative}: URL inválida: #{href}"
    end
  end
  doc.css("img").each do |img|
    next if img["id"] == "hubLightboxImg"
    name = img["src"].to_s.split("/").last
    errors << "#{relative}: imagem sem alt: #{name}" if img["alt"].nil?
    errors << "#{relative}: imagem sem width/height: #{name}" if img["width"].to_s.empty? || img["height"].to_s.empty?
    if img["src"].to_s.include?("/assets/img/") && !img.ancestors("picture").first&.at_css("source[type='image/webp']")
      errors << "#{relative}: imagem sem versão WebP: #{name}"
    end
  end
  if doc.at_css("body.hub-body")
    %w[description twitter:card].each do |name|
      errors << "#{relative}: metadado ausente: #{name}" unless doc.at_css("meta[name='#{name}']")
    end
    %w[og:title og:description og:image og:url].each do |name|
      errors << "#{relative}: metadado ausente: #{name}" unless doc.at_css("meta[property='#{name}']")
    end
    errors << "#{relative}: URL canônica ausente" unless doc.at_css("link[rel='canonical']")
    ids = doc.css("[id]").map { |element| element["id"] }
    errors << "#{relative}: IDs duplicados" unless ids.length == ids.uniq.length
  end
end
abort errors.uniq.map { |error| "ERRO: #{error}" }.join("\n") unless errors.empty?
puts "OK: #{documents.length} páginas compiladas, links, âncoras, imagens e metadados"
