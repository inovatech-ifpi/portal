---
layout: hub
title: "Indicadores — critérios e fontes"
permalink: /evidencias/
lang: pt
url_en: /en/evidencias/
description: "Unidades, recorte histórico e critérios dos resultados da Residência INOVATECH."
---

<article class="hub-container hub-evidence" aria-labelledby="evidence-title">
<h1 id="evidence-title">Indicadores — critérios e fontes</h1>
<p>Os resultados técnicos abaixo descrevem a Fase 1, no período {{ site.data.portal.facts.period }}. Trabalho registrado, implantação e transferência documental são etapas distintas.</p>
{% include indicadores.html %}
<h2>Como ler os números</h2>
<ul>
  <li><strong>Itens de trabalho concluídos</strong> são registros encerrados nos quadros de trabalho dos três squads com repositório institucional do IFPI. A contagem não equivale a incrementos implantados.</li>
  <li><strong>PRs integrados</strong> são alterações de código revisadas e incorporadas à linha principal desses repositórios. Não se somam à contagem de itens para produzir uma nova quantidade de entregas.</li>
  <li><strong>Marcos técnicos no prazo</strong> considera M1, Gate Técnico, M2, M3 e o critério obrigatório da Homologação. A transferência documental não integra esse indicador.</li>
  <li><strong>Sistemas implantados</strong> considera SGAE, Projeto Flix e Conecta CATCE (Catraka). O SPIA Maestro é uma frente estadual com sistema preexistente da SSP-PI, acompanhada separadamente.</li>
</ul>
<h2>Fontes e formalização</h2>
<p>A consolidação se apoia no Relatório da Fase 1, no cronograma institucional e nos registros de revisão de código da <a href="https://github.com/inovatech-ifpi">organização inovatech-ifpi</a>. Os repositórios dos squads e os documentos operacionais têm acesso restrito; esta página publica a síntese apropriada ao público.</p>
<p>A implantação não certifica a conclusão da transferência. Na conferência de {{ site.data.portal.facts.checked_at }}, a formalização documental dos sistemas do IFPI continuava em andamento. Cada sistema exige mantenedor, documentação operacional e evidências próprias antes do encerramento desse processo.</p>
<p>Orçamento e estudantes do caso SGAE descrevem a escala do setor atendido; não representam economia ou impacto financeiro medido.</p>
<a class="hub-card-link" href="{{ '/portfolio/' | relative_url }}">Conhecer os estudos de caso →</a>
</article>
