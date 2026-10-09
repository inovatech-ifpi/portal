#!/usr/bin/env ruby

root = File.expand_path("..", __dir__)
puts "=== 1. VERIFICANDO ARQUIVOS DE IMAGEM ==="
all_files = Dir[File.join(root, "*.md"), File.join(root, "en", "*.md"), File.join(root, "_data", "*.yml"), File.join(root, "_layouts", "*.html")]
image_refs = []
all_files.each do |f|
  text = File.read(f)
  text.scan(/assets\/img\/[^\s"'<>]+/).each do |img|
    clean_img = img.gsub(/[|)].*$/, "").strip
    if clean_img =~ /\.(png|jpg|jpeg|svg)$/
      image_refs << [clean_img, f]
    end
  end
end

missing = []
image_refs.uniq.each do |img, src|
  path = File.join(root, img)
  unless File.exist?(path)
    missing << "#{img} em #{File.basename(src)}"
  end
end

if missing.empty?
  puts "OK: Todas as #{image_refs.map(&:first).uniq.length} imagens referenciadas existem no disco!"
else
  puts "Imagens ausentes:"
  puts missing
end

puts "\n=== 2. VERIFICANDO ÂNCORAS NO PORTFÓLIO ==="
portfolio = File.read(File.join(root, "portfolio.md"))
%w[sgae flix conecta spia proximo-ciclo].each do |id|
  found = portfolio.include?("id=\"#{id}\"")
  puts "Portfolio: id=#{id} -> #{found ? 'OK' : 'FALTA'}"
end

puts "\n=== 3. VERIFICANDO ÂNCORAS NA HOME ==="
home = File.read(File.join(root, "index.md"))
%w[inicio indicadores fabrica solucoes equipes impacto parceiros noticias colabore].each do |id|
  found = home.include?("id=\"#{id}\"")
  puts "Home: id=#{id} -> #{found ? 'OK' : 'FALTA'}"
end

puts "\n=== 4. VERIFICANDO LINKS DA NAVEGAÇÃO ==="
require "yaml"
nav = YAML.safe_load(File.read(File.join(root, "_data", "navegacao.yml")))
nav["hub"].each do |item|
  puts "Nav Hub: #{item['titulo']} -> #{item['url']}"
end
nav["residencia"].each do |item|
  puts "Nav Residencia: #{item['titulo']} -> #{item['url']}"
end

puts "\n=== AUDITORIA CONCLUÍDA COM SUCESSO ==="
