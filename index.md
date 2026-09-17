---
layout: page
title: "Onde estamos"
permalink: /
kicker: "// status da residência"
description: "Semana 19 — fase 2: evolução dos sistemas em sprints enquanto as frentes do Governo do Estado não abrem"
---

<div class="progress-block" aria-label="Progresso do ciclo">
  <div class="progress-meta mono">
    <span>semana {{ site.data.portal.cycle.current_week }}/{{ site.data.portal.cycle.total_weeks }}</span>
    <span>{{ site.data.portal.cycle.current_period }} · {{ site.data.portal.cycle.current_focus }}</span>
  </div>
  <div class="progress-track" aria-hidden="true">
    {% for number in (1..site.data.portal.cycle.total_weeks) %}
      <span class="progress-cell{% if number < site.data.portal.cycle.current_week %} done{% elsif number == site.data.portal.cycle.current_week %} current{% endif %}"></span>
    {% endfor %}
  </div>
  <p class="progress-caption">
    Residência de doze meses, iniciada em {{ site.data.portal.cycle.start }} ·
    esta fase vai até o marco de {{ site.data.portal.cycle.end }} ·
    <strong>{{ site.data.portal.cycle.current_phase }}</strong>
  </p>
</div>

<div class="alert">
  <span class="alert-tag mono">AGORA</span>
  <p>
    <strong>Fase 2: os sistemas continuam evoluindo.</strong>
    A fase no IFPI encerrou no M3, em 07/08, e os três sistemas estão implantados
    e em uso. Enquanto as frentes do Governo do Estado seguem em negociação, as
    equipes trabalham em sprints de duas semanas sobre os sistemas entregues. O que
    entra em cada sprint é o que o setor que usa o sistema prioriza, e toda sprint
    termina em produção e documentada, pronta para outra equipe assumir.
    Sprint E1: de 21/09 a 02/10.
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
