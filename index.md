---
layout: page
title: "Onde estamos"
permalink: /
kicker: "// status da residência"
description: "Semana 11 — Sprint 3 / M2 · 20 a 24 de julho de 2026"
---

<div class="progress-block" aria-label="Progresso do ciclo">
  <div class="progress-meta mono">
    <span>semana {{ site.data.portal.cycle.current_week }}/{{ site.data.portal.cycle.total_weeks }}</span>
    <span>{{ site.data.portal.cycle.current_period }} · {{ site.data.portal.cycle.current_focus }}</span>
  </div>
  <div class="progress-track" aria-hidden="true">
    {% for number in (1..13) %}
      <span class="progress-cell{% if number < site.data.portal.cycle.current_week %} done{% elsif number == site.data.portal.cycle.current_week %} current{% endif %}"></span>
    {% endfor %}
  </div>
  <p class="progress-caption">
    Ciclo de {{ site.data.portal.cycle.total_weeks }} semanas ·
    {{ site.data.portal.cycle.start }} → {{ site.data.portal.cycle.end }} ·
    <strong>{{ site.data.portal.cycle.current_phase }}</strong>
  </p>
</div>

<div class="alert">
  <span class="alert-tag mono">AGORA</span>
  <p>
    <strong>Sprint 3 e consolidação do beta.</strong>
    Cada squad fecha o recorte demonstrável do M2, prioriza integrações e UX
    essenciais e registra evidências, pendências e bloqueios. Consulte o
    <a href="{{ '/sprint-3/' | relative_url }}">guia da semana</a>.
    M2: sexta, 24/07.
  </p>
</div>

## Equipes e projetos

<div class="teams">
  {% for project in site.data.portal.projects %}
    <article class="team-card {{ project.tone }}">
      <div class="team-head">
        <span class="team-code mono">{{ project.code }}</span>
        <span class="badge">{{ project.status }}</span>
      </div>
      <h3>{{ project.name }}</h3>
      <p>{{ project.description }}</p>
      <footer class="mono">{{ project.residents }} residentes</footer>
    </article>
  {% endfor %}
</div>

## Marcos

<div class="milestone-strip">
  {% for milestone in site.data.portal.milestones %}
    <div class="milestone {{ milestone.tone }}">
      <span class="milestone-date mono">{{ milestone.date }}</span>
      <span><strong>{{ milestone.code }}</strong> — {{ milestone.name }} · {{ milestone.deliverable }}</span>
      <span class="milestone-status mono">{{ milestone.status }}</span>
    </div>
  {% endfor %}
</div>

## Próximos checkpoints

<ul class="deadline-list">
  {% for deadline in site.data.portal.deadlines %}
    <li>
      <span class="deadline-date mono">{{ deadline.date }}</span>
      <span>
        <a href="{{ deadline.link | relative_url }}"><strong>{{ deadline.title }}</strong></a>
        — {{ deadline.detail }}
      </span>
    </li>
  {% endfor %}
</ul>

> Este portal é a referência oficial para cronograma, metodologia, materiais e
> entregas. O grupo de mensagens é usado para avisos rápidos.
