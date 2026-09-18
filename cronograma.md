---
layout: page
title: "Cronograma e Marcos"
permalink: /cronograma/
kicker: "// residência de 12 meses · fase 1 encerrada em 11/09, no marco de Transferência"
nav_icon: "◷"
nav_title: "Cronograma"
---

## Marcos principais

Todas as equipes seguem o mesmo calendário de entregas.

<div class="table-wrap">
  <table>
    <thead>
      <tr><th>Marco</th><th>Data</th><th>Situação</th><th>O que precisa estar pronto</th></tr>
    </thead>
    <tbody>
      {% for milestone in site.data.portal.milestones %}
        <tr>
          <td><strong>{{ milestone.code }} — {{ milestone.name }}</strong></td>
          <td class="mono">{{ milestone.date }}</td>
          <td>{{ milestone.status }}</td>
          <td>{{ milestone.deliverable }}</td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

## Semana a semana

<ol class="week-list">
  {% for week in site.data.portal.weeks %}
    <li class="{{ week.state }}">
      <span class="week-number mono">{% if week.state == 'done' %}✓ {% endif %}S{{ week.number }}</span>
      <span class="mono dim">{{ week.period }}</span>
      <span class="week-focus">
        {% if week.link %}<a href="{{ week.link | relative_url }}"><strong>{{ week.focus }}</strong></a>{% else %}{{ week.focus }}{% endif %}
      </span>
    </li>
  {% endfor %}
</ol>

> **Fase 1 (11/05 a 11/09, 18 semanas):** as Sprints 1, 2 e 3 foram os ciclos
> semanais de implementação até o M2; as semanas 12 e 13 foram de
> [validação e entrega]({{ '/reta-final/' | relative_url }}), encerradas no M3;
> a semana 14 foi a [homologação]({{ '/homologacao/' | relative_url }}) no
> ambiente do IFPI; e a fase fechou na Transferência dos sistemas aos setores
> demandantes, no Encontro INOVATECH de 11/09.
>
> **A Transferência encerrou a fase 1, não a residência**, que é de doze meses.
> A fase 2 segue em [sprints de evolução]({{ '/sprint-e1/' | relative_url }}) de
> duas semanas, cada uma terminando em produção e documentada, até que as frentes
> do Governo do Estado chamem as equipes.
