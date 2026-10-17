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

## Planejamento e compromisso da primeira semana

Cada equipe organiza no próprio repositório o milestone **Sprint E3 — 19/10 a 30/10**:

1. **Revisar o que ficou da E1 e da E2.** Identificar itens sem revisão, validação,
   implantação ou evidência. Registrar o destino de cada pendência e vincular à
   E3 o que for mantido, sem encerrar issues apenas porque a sprint terminou.
2. **Definir o objetivo em uma frase verificável.** Selecionar de 3 a 5 itens
   priorizados pelo demandante, considerando o trabalho que ficou pendente.
3. **Registrar responsáveis e critérios de aceite.** Cada issue deve mostrar o
   resultado esperado, como verificar a conclusão e quem conduz a revisão.
4. **Planejar validação e implantação.** Integrar um PR não comprova que a
   alteração já está disponível no ambiente do IFPI; registrar essa evidência.
5. **Registrar o compromisso da semana no GitHub.** Manter objetivo, responsáveis
   e critérios de aceite nas issues vinculadas ao milestone E3, além dos
   impedimentos que precisam de apoio do instrutor. O grupo é usado para avisos.

Se o compromisso ainda não foi registrado na segunda-feira, regularize no
próximo dia útil. O início e o fechamento da sprint seguem o calendário.

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
| Primeira semana | Planejamento, revisão das pendências da E2 e compromisso registrado |
| Quarta-feira | Checkpoint de integração e cobrança das dependências externas pelos instrutores |
| Sexta da primeira semana | Resultado parcial com evidências e bloqueios |
| Segunda semana | Validação com o demandante, implantação e documentação |
| Sexta de fechamento | Review em produção, retrospectiva e preparação do próximo ciclo |

## Critério de pronto

- incremento **em produção no IFPI**, validado e com evidência na issue;
- **README/runbook atualizados**, incluindo operação e retorno à versão anterior;
- credenciais fora do repositório e dados pessoais fora das demonstrações;
- pendências registradas como **issues com responsável e próximo passo**;
- retrospectiva curta sobre o que funcionou e o que precisa mudar.

Se houver bloqueio de implantação, registre o que foi validado, o que falta e
quem precisa agir. O item continua pendente de produção. Mesmo sem entrega,
o resultado da semana deve ser comunicado.
