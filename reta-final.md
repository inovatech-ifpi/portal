---
layout: page
title: "Reta final — validação e entrega do M3"
permalink: /reta-final/
kicker: "// semanas 12 e 13 · 27/07 a 07/08/2026"
nav_icon: "◉"
nav_title: "Reta final"
---

Semana 12 — **27 a 31/07/2026** · Semana 13 — **03 a 07/08/2026**

M3 — **sexta-feira, 07/08**

> O M2 encerrou o ciclo de implementação. O que vem agora não é sprint nova:
> são duas semanas para validar o que existe com quem vai usar, corrigir o que
> a validação apontar e fechar a entrega. Nada que não estiver pronto em 07/08
> entra no relatório final como limitação conhecida — e isso é aceitável.
> O que não é aceitável é chegar na entrega sem ter planejado.

## Primeira coisa da semana 12

Antes de abrir qualquer tarefa nova, cada equipe precisa ter o marco M3 planejado
no próprio repositório:

1. abrir as issues do **M3 — Entrega final** no board, com responsável definido;
2. fechar ou remilestonar o que sobrou do M2 — carry-over não some sozinho;
3. decidir, explicitamente, o que **não** vai ser feito até 07/08;
4. marcar a data da validação com o usuário real da demanda;
5. dividir quem escreve o relatório final, quem prepara a demonstração e quem
   organiza as evidências.

Marco sem issue e issue sem responsável são a causa mais comum de entrega
atropelada na última semana. Se o board não mostra o M3, o M3 não está planejado.

## O que precisa estar pronto em 07/08

- **solução validada** com pelo menos um usuário real da demanda, com registro
  do que foi testado, por quem e o que mudou depois;
- **documentação** no repositório: como executar, como implantar, decisões
  técnicas e limitações conhecidas;
- **relatório final** consolidando o percurso das 13 semanas — problema,
  solução, resultados, dificuldades e próximos passos;
- **apresentação** preparada para o encerramento, com roteiro e responsáveis;
- **repositório organizado**: board sem cartão órfão, branches mergeadas ou
  descartadas, README que permite outra pessoa subir o projeto.

## Validação com usuário: o que conta

Validação não é a equipe testando o próprio sistema. Conta como validação quando
alguém de fora do time — do Serviço Social, da Reitoria, da portaria, da área
demandante — executa o fluxo e comenta. O registro mínimo é: quem participou,
qual fluxo foi testado, o que travou e o que a equipe decidiu fazer a respeito.

Bloqueio para agendar essa conversa é assunto de instrutor. Sinalize no mesmo dia,
não na véspera.

## Ritmo das duas semanas

| Momento | O que acontece |
|---|---|
| **Semana 12 — segunda** | M3 planejado no board, responsáveis definidos, validação agendada |
| **Semana 12 — quarta** | Validação com usuário real acontecendo; correções priorizadas |
| **Semana 12 — sexta** | Correções da validação fechadas; relatório final iniciado |
| **Semana 13 — segunda** | Congelamento de escopo: só correção, documentação e ensaio |
| **Semana 13 — quarta** | Ensaio da apresentação; evidências e documentação revisadas |
| **Semana 13 — sexta** | **M3**: demonstração, entrega do relatório e encerramento |

## Higiene técnica antes de demonstrar

Um checklist curto, aplicável a todas as equipes:

- nenhuma proteção de segurança desligada "temporariamente" na branch principal;
- variáveis de ambiente e segredos fora do código versionado;
- dados de teste no lugar de dados reais de pessoas, sempre;
- o projeto sobe do zero seguindo apenas o que está escrito no README.

O último item é o mais esquecido e o mais cobrado: se só funciona na máquina de
quem escreveu, ainda não está entregue.
