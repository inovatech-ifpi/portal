# Portal INOVATECH — GitHub Pages

Portal institucional e área da residência: https://inovatech-ifpi.github.io/portal/

- **Conteúdo:** páginas Markdown na raiz e templates em `templates/`.
- **Layouts:** `hub.html` para a vitrine PT/EN; `default.html` e `page.html` para as páginas da Residência. Os dois usam o mesmo cabeçalho e rodapé (`_includes/hub-header.html` e `hub-footer.html`); a Residência acrescenta a subnavegação em abas, definida em `_data/navegacao.yml`.
- **Dados canônicos:** `_data/portal.yml` concentra semana, marcos, projetos, tecnologias, contagens, recortes dos indicadores, contatos institucionais e prazos. `_data/idiomas.yml` contém textos da interface; `_data/squads.yml` relaciona equipes, fotos e texto alternativo; `_data/imagens.yml` é gerado e não se edita à mão.
- **Editar:** prepare a mudança em branch e abra um PR. A integração na `main` republica o site; revise o preview antes do merge.
- **Rotina de sexta:** atualizar semana, sprint e prazos em `_data/portal.yml`. Os componentes compartilham esses fatos; não duplicar contagens ou links da sprint vigente nos layouts.
- **Verificação:** execute `ruby scripts/check_portal.rb` antes de publicar. Mudou de visual? Siga o [guia de estilo](#guia-de-estilo).
- **REGRA:** este repositório é **PÚBLICO**. Não publicar dados pessoais de beneficiários, conteúdo avaliativo ou documentação operacional restrita. Utilizar apenas materiais e canais institucionais autorizados; registrar decisões de autorização na operação privada.

Não existe conteúdo compilado ou minificado como fonte editorial. O portal usa
Jekyll para aplicar o mesmo layout a todas as páginas.

## Validar e revisar

```bash
bash scripts/otimizar-imagens.sh   # só se entrou ou mudou alguma imagem
ruby scripts/check_portal.rb
jekyll build --destination /tmp/inovatech-portal-preview
ruby scripts/check_site.rb /tmp/inovatech-portal-preview
```

Sem Jekyll instalado, o build roda em contêiner:
`docker run --rm -v "$PWD":/srv/jekyll -v /tmp/preview:/out jekyll/jekyll:3.8 jekyll build -d /out/portal --baseurl /portal`.

A última verificação usa Nokogiri e valida o HTML compilado: destinos locais,
âncoras, imagens e metadados. O workflow do PR executa as verificações e
disponibiliza o artefato `portal-preview`, sem publicar a branch.

Confira também menu, teclado e larguras de 320, 390, 860, 1024, 1197, 1280 e
1440 pixels. A compilação e as capturas são artefatos de QA; não entram como
fontes editoriais. A metodologia dos indicadores está em `/evidencias/` e
`/en/evidencias/`. Implantação e marcos técnicos não certificam transferência
documental concluída.

## Guia de estilo

Resumo das decisões da auditoria de design de outubro/2026. Vale para qualquer mudança visual,
no hub ou na Residência.

### Cores e fontes

Ficam **só** no `:root` de `assets/css/base.css`. Nada de hexadecimal novo espalhado: se faltar
uma cor, ela entra como token, com nome em português e contraste conferido.

| Token | Uso | Contraste |
|---|---|---|
| `--azul` `#263982` | cor da marca: links, botões, kickers, números | 9,8:1 sobre `--papel` |
| `--azul-escuro` `#162459` | faixas escuras, subnavegação, hover de botão | branco 14,7:1 |
| `--azul-claro` `#edf2f9` | fundos de destaque claros | `--azul` 9,4:1 |
| `--azul-luz` `#b8c6f2` | texto e detalhes **sobre fundo escuro** | 8,7:1 sobre `--azul-escuro`; **1,7:1 sobre branco — nunca como texto em fundo claro** |
| `--rodape` `#080f26` | fundo do rodapé | `--azul-luz` 11,2:1 |
| `--papel` / `--superficie` | fundo da página / cartões | — |
| `--texto` / `--texto-2` / `--texto-3` | títulos / corpo / legendas | 16,6 / 8,3 / 5,9:1 sobre `--papel` |
| `--linha` / `--linha-forte` | bordas e divisórias | decorativo |
| `--alerta` / `--alerta-claro` | avisos | 4,8:1 |
| `--foco` | contorno de foco do teclado | — |

Tipografia: `--fonte-titulo` (Montserrat 800) em títulos, `--fonte-corpo` (Plus Jakarta Sans) no
texto e `--fonte-mono` (IBM Plex Mono) **só** para dados, datas e códigos. Verde, mono em menus e
Space Grotesk são da linguagem antiga e não voltam.

### Camadas de CSS

`assets/css/` tem quatro arquivos, carregados na ordem de `_data/estilos.yml`:
`base.css` (tokens, tipografia, tabelas), `hub.css` (cabeçalho, home, rodapé),
`showroom.css` (portfólio) e `residencia.css` (páginas operacionais). Cada regra vai na camada
do componente; uma regra nova não deve depender de vir "depois" para funcionar.

### Componentes de página

- **Seção da home:** `section.hub-section > .hub-container > .hub-section-head` com
  `p.hub-kicker` (mesmo nome do item de menu), `h2` e `p.hub-section-lead`. A home tem 6 seções;
  conteúdo novo entra como `section.hub-subsection` dentro de uma delas, com `h3` e
  `aria-labelledby`.
- **Links de ação:** `a.hub-card-link` ("Ver estudo de caso →") e `a.hub-btn`. Menu e rótulos
  saem de `_data/navegacao.yml` e `_data/idiomas.yml` — toda chave nova existe em PT **e** EN.
- **Ícones:** SVG de traço com `aria-hidden="true"`. Emoji não entra em menu, cabeçalho,
  rodapé nem layouts (o `check_portal.rb` acusa).

### Imagens

1. Coloque o JPG/PNG em `assets/img/` (até 450 KB).
2. Rode `bash scripts/otimizar-imagens.sh` (precisa de `cwebp`: `brew install webp`).
3. Use o include, nunca `<img>` direto nem `![]()`:
   `{% include imagem.html src="/assets/img/pasta/foto.jpg" alt="Descrição do que se vê" sizes="(min-width: 1100px) 570px, 90vw" %}`.
4. `alt` descreve o que aparece, sem nomes de pessoas; imagem decorativa usa `alt=""`.

### Acessibilidade

- Contraste mínimo de 4,5:1 (3:1 para texto ≥ 24 px); confira texto sobre foto ou gradiente nas
  duas pontas.
- Links e botões soltos com área de toque de 44 × 44 px.
- `aria-label` só em elemento com papel (`button`, `nav`, `section`, `role="group"`…); em `<div>`
  comum o leitor de tela ignora.
- Teste com teclado (Tab, Enter, Esc no menu e no lightbox) e a 375, 1024 e 1440 px, em PT e EN.

### O que não fazer

- `!important` novo (os únicos aceitos são os de `prefers-reduced-motion` e `[hidden]`).
- Corrigir visual acrescentando regra no fim do arquivo para "ganhar" da anterior — ajuste a
  regra original.
- Repetir número, contato ou link da sprint em layout: tudo vem de `_data/portal.yml`.
- Publicar dado pessoal, avaliação ou detalhe operacional do SPIA Maestro (repositório público).

> **Dica:** se o `check_site.rb` passar rápido demais num terminal com locale ASCII, confira a
> versão do script — ele força UTF-8 e falha se alguma página chegar vazia ao parse.
