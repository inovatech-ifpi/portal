---
layout: page
title: "Painel da Residência"
permalink: /residencia/
kicker: "// acompanhamento operacional das equipes"
description: "Fase 2: calendário, ritmo de sprints e orientações técnicas para a evolução dos sistemas"
nav_icon: "⌂"
nav_title: "Painel da Residência"
url_en: /en/
---

<div class="progress-block" role="group" aria-label="Progresso do ciclo">
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
    <strong>Fase 2: os sistemas continuam evoluindo em produção.</strong>
    O Encontro INOVATECH de 11/09 apresentou os resultados da fase 1,
    com os sistemas implantados no IFPI e a transferência documental em formalização. Enquanto as frentes do Governo do
    Estado seguem em articulação, as equipes trabalham em sprints de duas semanas
    sobre os sistemas entregues. O que entra em cada sprint é o que o setor que usa
    o sistema prioriza, e toda sprint termina em produção e documentada, pronta para
    outra equipe assumir.
    <a href="{{ site.data.portal.cycle.current_sprint_link | relative_url }}">Acessar Guia da {{ site.data.portal.cycle.current_sprint_label }} →</a>
  </p>
</div>

## Equipes e Projetos Oficiais

<div class="teams">
  {% for project in site.data.portal.projects %}
    <article class="team-card {{ project.tone }}">
      <div class="team-head">
        <span class="team-code mono">{{ project.code }}</span>
        <span class="badge">{% if project.status_ref == "current_sprint" %}{{ site.data.portal.cycle.current_sprint_label }}{% else %}{{ project.status }}{% endif %}</span>
      </div>
      <h3>{{ project.name }}</h3>
      <p>{{ project.description }}</p>
      <footer class="mono">
        <span>{{ project.residents }} residentes</span>
        {% if project.stakeholder %}
          <span class="dim">· {{ project.stakeholder }}</span>
        {% endif %}
      </footer>
    </article>
  {% endfor %}
</div>

## Marcos do Ciclo

<div class="milestone-strip">
  {% for milestone in site.data.portal.milestones %}
    <div class="milestone {{ milestone.tone }}">
      <span class="milestone-date mono">{{ milestone.date }}</span>
      <span><strong>{{ milestone.code }}</strong> — {{ milestone.name }} · {{ milestone.deliverable }}</span>
      <span class="milestone-status mono">{{ milestone.status }}</span>
    </div>
  {% endfor %}
</div>

## Próximos Checkpoints

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

> **Ritmo Operacional:** Este portal reúne o cronograma, a metodologia, os materiais e as orientações.
> O planejamento, os resultados, as evidências das entregas e os impedimentos são registrados no
> repositório GitHub de cada equipe. O grupo de mensagens é usado para avisos rápidos.
