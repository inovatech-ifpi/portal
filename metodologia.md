---
layout: page
title: "Metodologia"
permalink: /metodologia/
kicker: "// como a gente trabalha"
nav_icon: "⟳"
---

## A fórmula

**Entender pessoas → formar equipes → entender problemas → projetar → implementar em ciclos → validar com usuários → documentar → entregar.**

O processo não começa pelo código. Começa pelo problema, pelo usuário e pelo contexto.

## Como o ciclo funciona

<ol>
{% for step in site.data.portal.factory_steps %}
  <li><strong>{{ step.title }} — {{ step.date }}.</strong> {{ step.desc }}</li>
{% endfor %}
</ol>

A homologação segue o [guia público de aceite]({{ '/homologacao/' | relative_url }}). O ciclo vigente está no [guia da {{ site.data.portal.cycle.current_sprint_label }}]({{ site.data.portal.cycle.current_sprint_link | relative_url }}).

## Requisitos para concluir a transferência

A transferência documental segue sete requisitos de sustentabilidade. O encontro institucional e a implantação não certificam o cumprimento desta lista por cada sistema.

1. Mantenedor técnico nomeado pelo setor demandante.
2. Runbook de operação entregue.
3. Procedimento de rollback testado.
4. Homologação formal assinada pelo gestor.
5. Repositório institucional auditado e sem dados sensíveis.
6. Documentação de arquitetura e dados atualizada.
7. Termo formal de transferência assinado entre as partes.

Na conferência de {{ site.data.portal.facts.checked_at }}, a formalização dos sistemas do IFPI continuava em andamento.

## Papéis nas equipes

- **PO da equipe** — dono do problema: backlog, prioridade, contato com o usuário
- **TL (rotativo)** — organiza o trabalho técnico do ciclo; **todo mundo passa pelo papel**
- **Dev/QA/UX/DevOps/Docs** — todos desenvolvem; papéis são acumuláveis e rotativos, garantindo que todas as responsabilidades estejam cobertas

## Regras de convivência com o processo

- **Processo visível:** backlog, tarefas, impedimentos e decisões sempre atualizados no repositório/board da equipe
- **Documentação é produto**, não anexo — README, critérios de aceite e manual fazem parte da entrega
- **Todo incremento passa por teste** com registro de evidências
- **IA com responsabilidade:** pode apoiar, não substitui autoria e entendimento — você precisa saber explicar todo código que entregar
- **Avisar cedo quando travar** vale mais que heroísmo silencioso

## Rituais

**Ritmo da semana na fase 2:** na **segunda**, cada equipe registra no GitHub o
compromisso da semana — um objetivo verificável, com dono; na **sexta**, o
resultado — o que entrou em produção, o que travou e em quem travou. Semana sem
entrega não pula o relatório: registra o bloqueio. Objetivos, resultados,
evidências e impedimentos ficam nas issues e no quadro da equipe; o grupo é
usado para avisos e o portal reúne as orientações e o calendário público.

| Ritual | Quando | Duração |
|---|---|---|
| Compromisso da semana (GitHub: issues + milestone) | segunda | assíncrono |
| Daily da equipe | diária ou 3×/semana | 10 min |
| Checkpoint técnico com instrutores | semanal | 30–45 min |
| Reunião com o usuário do setor | semanal ou quinzenal | 30 min |
| Resultado da semana (GitHub: issues + evidências) | sexta | assíncrono |
| Sprint planning / review / retro | a cada duas semanas | 45–60 / 30–60 / 20–30 min |
