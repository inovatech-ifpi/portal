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

> Abra o template, copie para o `docs/` do repositório da sua equipe e preencha. Cada página tem o link para copiar o markdown cru no GitHub.

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

- [Estrutura do relatório final]({{ '/templates/relatorio-final/' | relative_url }})
