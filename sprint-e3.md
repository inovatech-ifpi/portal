---
layout: page
title: "Sprint E3 — continuidade e entrega em produção"
permalink: /sprint-e3/
kicker: "// fase 2 · evolução contínua"
nav_icon: "▶"
nav_title: "Sprint E3"
---

{% assign sprint_weeks = site.data.portal.weeks | where: "link", "/sprint-e3/" %}
{% assign sprint_milestone = site.data.portal.milestones | where: "code", "E3" | first %}
{% for week in sprint_weeks %}
Semana {{ week.number }} — **{{ week.period }}/2026**{% unless forloop.last %} · {% endunless %}
{% endfor %}

Review da Sprint E3 — **sexta-feira, {{ sprint_milestone.date }}**

A Sprint E3 continua a evolução do SGAE, do Projeto Flix e do Conecta CATCE.
As prioridades vêm dos setores que usam os sistemas. O objetivo é entregar um
incremento em produção, com documentação suficiente para outra equipe assumir.

O calendário da E2 encerrou em 16/10. Isso não significa que toda pendência foi resolvida:
o trabalho incompleto precisa ser revisto e ter seu próximo passo registrado.
Os guias da [E1]({{ '/sprint-e1/' | relative_url }}) e da [E2]({{ '/sprint-e2/' | relative_url }}) permanecem disponíveis para consulta.

## Planejamento e compromisso na terça-feira (20/10)

> **Atenção ao calendário de feriados:** a segunda-feira (**19/10**) é feriado estadual (**Dia do Piauí**) e a quarta-feira da próxima semana (**28/10**) é o **Dia do Servidor Público**. O ciclo no calendário vai de 19/10 a 30/10, mas o ritual de abertura e registro de compromisso ocorre na **terça-feira, 20/10**, e o escopo deve ser dimensionado de forma enxuta (**2 a 4 itens** priorizados, considerando os dias úteis reais da quinzena).

Cada equipe organiza suas entregas no próprio repositório usando o milestone **Sprint E3 — 19/10 a 30/10** (já criado):

1. **Agrupar as tarefas no milestone da sprint.** Na Sprint E2, o trabalho não foi vinculado ao milestone correspondente. Nesta Sprint E3, vincule ao marco **Sprint E3 — 19/10 a 30/10** tanto as novas issues quanto o que continuar aberto da E1/E2, para mantermos o mapeamento do ciclo sem encerrar issues apenas por virada de sprint.
2. **Definir o objetivo em uma frase verificável e escopo enxuto.** Selecionar de **2 a 4 itens** priorizados pelo demandante (considerando o trabalho pendente da E1/E2 e o calendário reduzido pelos feriados de 19/10 e 28/10).
3. **Registrar responsáveis e critérios de aceite.** Cada issue deve mostrar o
   resultado esperado, como verificar a conclusão e quem conduz a revisão.
4. **Planejar validação e implantação.** Integrar um PR não comprova que a
   alteração já está disponível no ambiente do IFPI; registrar essa evidência.
5. **Registrar o compromisso até terça-feira (20/10) no GitHub.** Manter objetivo, responsáveis
   e critérios de aceite nas issues vinculadas ao milestone E3, além dos
   impedimentos que precisam de apoio do instrutor. O grupo é usado para avisos.

## Transferência e bloqueios

Pendências da transferência continuam acompanhadas até o fechamento, com
evidências no repositório. Se o trabalho técnico estiver pronto, registre isso.
O que depender de indicação institucional de mantenedor, assinatura ou acesso
deve ser encaminhado ao instrutor, com responsável pela cobrança e próximo passo.

Não deixe uma revisão depender indefinidamente de uma única pessoa. Combine
quem revisa, registre os pedidos de ajuste e avise o instrutor quando o fluxo
travar por mais de um dia.

## Ritmo da sprint

| Momento | O que acontece |
|---|---|
| Segunda-feira (19/10) | Feriado estadual (Dia do Piauí) |
| Terça-feira (20/10) | Abertura prática da Sprint E3: agrupamento das issues no milestone E3 e compromisso registrado (2 a 4 itens) |
| Quarta-feira (21/10) | Checkpoint de integração e cobrança das dependências externas pelos instrutores |
| Sexta da primeira semana (23/10) | Resultado parcial com evidências e bloqueios |
| Segunda semana (26 a 30/10) | Validação com o demandante, implantação e documentação (considerando o feriado de 28/10 — Dia do Servidor Público) |
| Sexta de fechamento (30/10) | Review em produção, retrospectiva e preparação do próximo ciclo |

## Critério de pronto

- incremento **em produção no IFPI**, validado e com evidência na issue;
- **README/runbook atualizados**, incluindo operação e retorno à versão anterior;
- credenciais fora do repositório e dados pessoais fora das demonstrações;
- pendências registradas como **issues com responsável e próximo passo**;
- retrospectiva curta sobre o que funcionou e o que precisa mudar.

Se houver bloqueio de implantação, registre o que foi validado, o que falta e
quem precisa agir. O item continua pendente de produção. Mesmo sem entrega,
o resultado da semana deve ser comunicado.
