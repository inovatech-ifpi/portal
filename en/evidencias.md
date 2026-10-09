---
layout: hub
title: "Indicators — criteria and sources"
permalink: /en/evidencias/
lang: en
url_pt: /evidencias/
description: "Units, historical scope and criteria behind INOVATECH Residency results."
---

<article class="hub-container hub-evidence" aria-labelledby="evidence-title">
<h1 id="evidence-title">Indicators — criteria and sources</h1>
<p>The technical results below describe Phase 1, covering {{ site.data.portal.facts.period }}. Recorded work, deployment and documentary handover are distinct stages.</p>
{% include indicadores.html %}
<h2>How to read the figures</h2>
<ul>
  <li><strong>Completed work items</strong> are closed records in the work boards of the three IFPI squads with institutional repositories. This count is distinct from deployed increments.</li>
  <li><strong>Merged PRs</strong> are reviewed code changes integrated into the main branches of those repositories. They should not be added to work items to create a new delivery count.</li>
  <li><strong>Technical milestones on schedule</strong> covers M1, the Technical Gate, M2, M3 and the mandatory production acceptance criterion. Documentary handover is not part of this indicator.</li>
  <li><strong>Deployed systems</strong> covers SGAE, Projeto Flix and Conecta CATCE (Catraka). SPIA Maestro is a state track working with a preexisting SSP-PI system and is tracked separately.</li>
</ul>
<h2>Sources and handover</h2>
<p>The consolidation draws on the Phase 1 report, institutional schedule and code review records in the <a href="https://github.com/inovatech-ifpi">inovatech-ifpi organisation</a>. Squad repositories and operational documents have restricted access; this page provides a public summary.</p>
<p>Deployment does not certify handover completion. At the {{ site.data.portal.facts.checked_at }} check, documentary handover of the IFPI systems was still in progress. Each system requires a maintainer, operational documentation and its own evidence before this process is complete.</p>
<p>The SGAE budget and student figures describe the scale of the stakeholder programme, not measured savings or financial impact.</p>
<a class="hub-card-link" href="{{ '/en/portfolio/' | relative_url }}">Explore the case studies →</a>
</article>
