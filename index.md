---
layout: page
title: "Onde estamos"
permalink: /
kicker: "// status da residência"
description: "Fase 2: calendário e orientações para a evolução dos sistemas em sprints"
url_en: /en/
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
    ciclo de evolução planejado até {{ site.data.portal.cycle.end }} ·
    <strong>{{ site.data.portal.cycle.current_phase }}</strong>
  </p>
</div>

<div class="alert">
  <span class="alert-tag mono">AGORA</span>
  <p>
    <strong>Fase 2: os sistemas continuam evoluindo.</strong>
    A fase 1 encerrou em 11/09, no marco de Transferência e no Encontro INOVATECH,
    com os três sistemas implantados no IFPI. Enquanto as frentes do Governo do
    Estado seguem em negociação, as equipes trabalham em sprints de duas semanas
    sobre os sistemas entregues. O que entra em cada sprint é o que o setor que usa
    o sistema prioriza, e toda sprint termina em produção e documentada, pronta para
    outra equipe assumir.
    <a href="{{ site.data.portal.cycle.current_sprint_link | relative_url }}">Guia da {{ site.data.portal.cycle.current_sprint_label }}</a>.
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
        {% if deadline.link %}<a href="{{ deadline.link | relative_url }}"><strong>{{ deadline.title }}</strong></a>{% else %}<strong>{{ deadline.title }}</strong>{% endif %}
        — {{ deadline.detail }}
      </span>
    </li>
  {% endfor %}
</ul>

> Este portal reúne o cronograma, a metodologia, os materiais e as orientações.
> O planejamento, os resultados, as evidências das entregas e os impedimentos
> são registrados no GitHub de cada equipe. O grupo de mensagens é usado para
> avisos rápidos.
