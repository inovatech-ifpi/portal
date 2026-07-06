---
layout: page
title: "Cronograma e Marcos"
permalink: /cronograma/
kicker: "// 13 semanas · 11/05 → 07/08/2026"
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

> O M2 é o próximo marco formal. As Sprints 1, 2 e 3 são ciclos semanais de
> implementação dentro desse marco.
