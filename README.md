# Portal INOVATECH — GitHub Pages

Portal institucional e área da residência: https://inovatech-ifpi.github.io/portal/

- **Conteúdo:** páginas Markdown na raiz e templates em `templates/`.
- **Layouts:** `hub.html` para a vitrine PT/EN; `default.html` e `page.html` para as orientações da residência. Home, indicadores, contatos e metadados usam includes compartilhados.
- **Dados canônicos:** `_data/portal.yml` concentra semana, marcos, projetos, tecnologias, contagens, recortes dos indicadores, contatos institucionais e prazos. `_data/idiomas.yml` contém textos da interface; `_data/squads.yml` apenas relaciona equipes e fotos.
- **Editar:** prepare a mudança em branch e abra um PR. A integração na `main` republica o site; revise o preview antes do merge.
- **Rotina de sexta:** atualizar semana, sprint e prazos em `_data/portal.yml`. Os componentes compartilham esses fatos; não duplicar contagens ou links da sprint vigente nos layouts.
- **Verificação:** execute `ruby scripts/check_portal.rb` antes de publicar.
- **REGRA:** este repositório é **PÚBLICO**. Não publicar dados pessoais de beneficiários, conteúdo avaliativo ou documentação operacional restrita. Utilizar apenas materiais e canais institucionais autorizados; registrar decisões de autorização na operação privada.

Não existe conteúdo compilado ou minificado como fonte editorial. O portal usa
Jekyll para aplicar o mesmo layout a todas as páginas.

## Validar e revisar

```bash
ruby scripts/check_portal.rb
jekyll build --destination /tmp/inovatech-portal-preview
ruby scripts/check_site.rb /tmp/inovatech-portal-preview
```

A última verificação usa Nokogiri e valida o HTML compilado: destinos locais,
âncoras, imagens e metadados. O workflow do PR executa as verificações e
disponibiliza o artefato `portal-preview`, sem publicar a branch.

Confira também menu, teclado e larguras de 320, 390, 860, 1024, 1197, 1280 e
1440 pixels. A compilação e as capturas são artefatos de QA; não entram como
fontes editoriais. A metodologia dos indicadores está em `/evidencias/` e
`/en/evidencias/`. Implantação e marcos técnicos não certificam transferência
documental concluída.
