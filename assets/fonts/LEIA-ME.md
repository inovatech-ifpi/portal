# Fontes do portal

Servidas pelo próprio portal para não depender de domínios externos (performance e privacidade).
Arquivos WOFF2 obtidos do Google Fonts, subconjuntos `latin` e `latin-ext`, sem modificação.
As declarações `@font-face` ficam em `assets/css/base.css`.

| Família | Pesos | Licença |
|---|---|---|
| Montserrat | 800 | SIL Open Font License 1.1 — `OFL-montserrat.txt` |
| Plus Jakarta Sans | 400–700 (variável) | SIL Open Font License 1.1 — `OFL-plusjakartasans.txt` |
| IBM Plex Mono | 400, 500, 600 | SIL Open Font License 1.1 — `OFL-ibmplexmono.txt` |

Para trocar ou acrescentar um peso, baixe o WOFF2 correspondente, atualize o `@font-face`
em `base.css` e, se a fonte aparecer no topo da página, o `preload` em `_includes/head.html`.
