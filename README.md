# Portal INOVATECH — GitHub Pages

Portal oficial dos residentes: https://inovatech-ifpi.github.io/portal/

- **Conteúdo:** páginas Markdown na raiz e templates em `templates/`.
- **Layout único:** `_layouts/default.html`, `_layouts/page.html` e `assets/css/portal.css`.
- **Dados compartilhados:** `_data/portal.yml` concentra semana atual, marcos, equipes, contatos e prazos.
- **Editar:** altere a fonte correspondente e faça commit na `main` — o site republica sozinho em ~1 min.
- **Rotina de segunda:** atualizar apenas os campos temporais em `_data/portal.yml` e revisar o aviso da home.
- **Verificação:** execute `ruby scripts/check_portal.rb` antes de publicar.
- **REGRA:** este repositório é **PÚBLICO**. Nada de dados pessoais, contatos diretos, conteúdo avaliativo ou detalhe interno de setores — na dúvida, não publica (ver ADR-0003 em `operacao-instrutores`).

Não existe conteúdo compilado ou minificado como fonte editorial. O portal usa
Jekyll para aplicar o mesmo layout a todas as páginas.
