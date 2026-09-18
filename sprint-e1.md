---
layout: page
title: "Sprint E1 — evolução dos sistemas entregues"
permalink: /sprint-e1/
kicker: "// fase 2 · semanas 20 e 21 · 21/09 a 02/10/2026"
nav_icon: "▶"
nav_title: "Sprint E1"
---

Semana 20 — **21 a 25/09/2026** · Semana 21 — **28/09 a 02/10/2026**

Review da Sprint E1 — **sexta-feira, 02/10**

> A fase 1 terminou com os três sistemas implantados e transferidos aos setores
> que os pediram. A fase 2 não é um novo projeto: é o mesmo sistema, evoluindo em
> ciclos de duas semanas sobre o que o setor demandante prioriza. Enquanto as
> frentes do Governo do Estado não chamam as equipes, o trabalho continua aqui.

## A regra que muda tudo

Toda sprint termina **em produção e pronta para outra equipe assumir**. Não é
"quase pronto na branch": é rodando no ambiente do IFPI, com README e runbook
atualizados e nenhuma credencial no repositório. O que não couber na sprint vira
issue aberta, com contexto suficiente para quem pegar depois — porque quem for
chamado para uma frente externa sai na hora, e o sistema não pode sair junto.

## Primeira coisa da segunda, 21/09

Cada equipe registra no próprio repositório, no milestone **Sprint E1 — 21/09 a
02/10**:

1. o **objetivo da sprint** em uma frase verificável;
2. **3 a 5 itens** priorizados pelo setor que usa o sistema — não pela equipe;
3. um responsável por item e critério de aceite escrito;
4. o que ainda falta da **transferência (7/7)**: responsável pela manutenção,
   runbook, rollback testado, termo assinado — o que estiver aberto entra na sprint;
5. o compromisso da semana postado no grupo, com dono.

Item sem dono e sprint sem objetivo são o mesmo problema da fase 1 com outro
nome. Se o board não mostra a E1, a E1 não começou.

## O que precisa estar pronto em 02/10

- **itens em produção**, com evidência (endereço, captura ou vídeo curto) na issue;
- **README e runbook** refletindo o sistema como está hoje, não como estava no M3;
- **transferência 7/7 fechada**, com o termo e o nome de quem mantém registrados;
- **pendências abertas como issue**, com contexto para outra pessoa continuar;
- **retrospectiva** curta: o que funcionou, o que travou e em quem travou.

## Ritmo das duas semanas

| Momento | O que acontece |
|---|---|
| **Semana 20 — segunda** | Objetivo, itens, donos e pendências da transferência no board; compromisso no grupo |
| **Semana 20 — sexta** | Resultado da semana: o que entrou em produção, o que travou e em quem |
| **Semana 21 — segunda** | Compromisso da segunda metade; escopo fecha — só o que já está na sprint |
| **Semana 21 — quarta** | Documentação revisada; ensaio da review com o setor demandante |
| **Semana 21 — sexta** | **Review E1**: demonstração em produção, retrospectiva e backlog da E2 |

## Higiene técnica

- credenciais e variáveis de ambiente fora do código versionado, sempre;
- dado real de aluno, servidor ou responsável **nunca** em ambiente de demonstração;
- o projeto sobe do zero seguindo apenas o que está escrito no README;
- procedimento de retorno à versão anterior testado antes de publicar a nova.

Semana sem entrega não pula o relatório de sexta. Diga o que travou e em quem
travou: relatório de bloqueio protege quem entregou.
