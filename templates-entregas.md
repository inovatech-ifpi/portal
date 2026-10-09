---
layout: page
title: "Templates e Entregas"
permalink: /templates-entregas/
kicker: "// o que entregar e quando"
nav_icon: "⎘"
nav_title: "Templates e entregas"
---

## O que entregar em cada marco

<div class="table-wrap">
  <table>
    <thead><tr><th>Marco</th><th>Data</th><th>Entregas da equipe</th></tr></thead>
    <tbody>
      {% for milestone in site.data.portal.milestones %}
        {% unless milestone.code == "M0" %}
          <tr>
            <td><strong>{{ milestone.code }}</strong></td>
            <td class="mono">{{ milestone.date }}</td>
            <td>{{ milestone.deliverable }}</td>
          </tr>
        {% endunless %}
      {% endfor %}
    </tbody>
  </table>
</div>

> O M1 não exige POC ou protótipo. A entrega formal é composta pelos artefatos
> de descoberta descritos acima.

## Entregas semanais (toda sexta)

- **Registro semanal da equipe** — objetivo, entregas com evidência, pendências, impedimentos, decisões, próximos passos

## Templates para baixar/copiar

> Abra o template e copie o markdown cru pelo link na página. O README para começar vai na raiz do repositório; os demais modelos podem ficar em `docs/`.

**Para começar um projeto**

- [README.md padrão INOVATECH — para estudantes e laboratórios]({{ '/templates/readme-projeto/' | relative_url }}) — copie para a raiz do repositório, identifique o demandante e combine o critério de pronto.

**Inception / M1**

- [Visão do produto]({{ '/templates/visao-produto/' | relative_url }})
- [Persona]({{ '/templates/persona/' | relative_url }})
- [Jornada do usuário]({{ '/templates/jornada-usuario/' | relative_url }})
- [Item de backlog (história + critérios de aceite)]({{ '/templates/item-backlog/' | relative_url }})
- [README padrão do projeto]({{ '/templates/readme-squad/' | relative_url }})

**Gate técnico (prazo encerrado em 03/07)**

- [Arquitetura mínima]({{ '/templates/arquitetura/' | relative_url }})
- [Modelo de dados]({{ '/templates/modelo-dados/' | relative_url }})
- [Plano de testes]({{ '/templates/plano-testes/' | relative_url }})

> Os critérios de aceite (BDD) ficam dentro do template de **Item de backlog** — revise os itens prioritários da sprint em curso.

**Sprints / contínuo**

- [Guia da Sprint 3 e checklist do M2]({{ '/sprint-3/' | relative_url }})
- [Guia de planejamento da Sprint 2]({{ '/sprint-2/' | relative_url }})
- [Guia de planejamento da Sprint 1]({{ '/sprint-1/' | relative_url }})
- [Registro semanal da equipe]({{ '/templates/registro-semanal-squad/' | relative_url }})
- [Retrospectiva de sprint]({{ '/templates/retrospectiva/' | relative_url }})

**Entrega final / M3**

- [Guia da reta final e checklist do M3]({{ '/reta-final/' | relative_url }})
- [Estrutura do relatório final]({{ '/templates/relatorio-final/' | relative_url }})

**Sprints de evolução (fase 2)**

- [Guia da Sprint E2 (vigente: 05/10 a 16/10)]({{ '/sprint-e2/' | relative_url }})
- [Guia da Sprint E1 (encerrada em 02/10)]({{ '/sprint-e1/' | relative_url }})
- Na review de cada sprint: itens em produção com evidência, README/runbook atualizados,
  pendências abertas como issue e [retrospectiva]({{ '/templates/retrospectiva/' | relative_url }})
