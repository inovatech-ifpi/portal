---
layout: page
title: "Sprint 1 — guia de planejamento"
permalink: /sprint-1/
---

Semana 09 — **06 a 10/07/2026**

Review 1 — **sexta-feira, 10/07**

> Ao final do planejamento de hoje, cada squad precisa ter um objetivo
> demonstrável, issues pequenas com critérios de aceite, responsáveis definidos
> pela própria equipe e bloqueios registrados.

## Sprint 1 não é um novo milestone

O milestone formal continua sendo **M2 — Beta funcional**, com prazo em
**24/07**. A Sprint 1 é a primeira semana de implementação dentro desse marco.

A label `sprint-1` indica **issues candidatas** para esta semana. Ela foi usada
para preparar a conversa, não para decidir o plano pela equipe. O squad deve:

1. validar se cada candidata realmente ajuda no objetivo da semana;
2. retirar da label o que não cabe;
3. ajustar ou dividir issues grandes;
4. criar apenas as issues adicionais que forem necessárias;
5. definir os responsáveis em conjunto.

## O que precisa sair do planejamento

Antes de começar a implementar, a equipe deve registrar:

- **objetivo da Sprint 1:** uma frase descrevendo o que será demonstrado na
  sexta-feira;
- **recorte:** o menor incremento funcional ou técnico que produz evidência
  verificável;
- **issues da semana:** tarefas necessárias para chegar ao objetivo;
- **responsáveis:** cada item com pelo menos uma pessoa responsável;
- **dependências:** acesso, decisão, serviço externo ou trabalho de outra issue;
- **forma de demonstração:** como a equipe provará que o incremento funciona;
- **bloqueios atuais:** o que já ameaça a entrega e de qual apoio a equipe
  precisa.

## Roteiro de hoje — 55 minutos

### 1. Revisar o ponto de partida — 5 min

- verificar o que ficou pendente do Gate Técnico;
- abrir o milestone `M2 — Beta funcional`;
- filtrar as issues com a label `sprint-1`;
- confirmar se há PRs abertos que precisam ser integrados ou ajustados.

### 2. Definir o objetivo demonstrável — 10 min

Completem a frase:

> Na Review 1, demonstraremos que **[usuário ou componente]** consegue
> **[resultado observável]**, mesmo que ainda usando **[limitação aceita]**.

Um bom objetivo descreve resultado. “Trabalhar no backend” ou “fazer as telas”
não é um objetivo verificável.

### 3. Escolher o menor recorte — 10 min

Perguntem:

- qual é o menor fluxo que atravessa as partes essenciais da solução?
- o que pode ser simulado nesta semana?
- o que pode esperar a Sprint 2?
- existe dependência externa que precisa de alternativa?
- o incremento cabe até sexta, incluindo teste, revisão e integração?

### 4. Preparar as issues — 15 min

Uma issue está pronta para entrar na Sprint 1 quando possui:

- problema ou resultado esperado;
- escopo pequeno o suficiente para ser verificado até sexta;
- critério de aceite observável;
- milestone `M2 — Beta funcional`;
- label `sprint-1`;
- dependências conhecidas;
- responsável definido pelo squad.

Se uma issue levar vários dias, envolver muitas partes ou tiver critérios muito
diferentes, dividam-na.

### 5. Distribuir trabalho e revisão — 10 min

- as pessoas escolhem ou negociam as tarefas — o instrutor não distribui tudo;
- quem implementa não deve ser a única pessoa capaz de revisar ou integrar;
- cada residente precisa ter participação observável na semana;
- documentação, testes, UX e DevOps também são entregas;
- ninguém deve permanecer silenciosamente bloqueado.

### 6. Fazer a checagem final — 5 min

Confirmem:

- [ ] o objetivo da semana está escrito;
- [ ] todas as issues escolhidas ajudam diretamente no objetivo;
- [ ] critérios de aceite podem ser demonstrados;
- [ ] responsáveis e dependências estão visíveis;
- [ ] revisão, teste e integração foram considerados;
- [ ] a demonstração de sexta-feira está combinada.

## Critério de conclusão

Uma issue não está concluída apenas porque alguém “terminou o código”. Ela deve
atender ao critério de aceite e deixar uma evidência verificável, como:

- PR integrado ou pronto para integração;
- teste automatizado ou roteiro de teste executado;
- documento atualizado no repositório;
- ambiente reproduzível;
- tela ou fluxo demonstrável;
- validação registrada com o demandante;
- decisão técnica registrada quando afetar a arquitetura.

## Organização no GitHub

- mantenham o trabalho no repositório oficial da equipe;
- usem uma branch por alteração coerente;
- relacionem o PR à issue correspondente;
- escrevam no PR o que mudou e como testar;
- façam revisão antes de integrar;
- atualizem a issue quando houver bloqueio ou mudança de escopo;
- não encerrem uma issue sem evidência do critério de aceite.

## Checkpoints da semana

| Quando | O que verificar |
|---|---|
| **Segunda — planejamento** | Objetivo, recorte, issues, responsáveis e dependências |
| **Quarta — bloqueios** | Impedimentos com mais de um dia, integração e risco para a Review |
| **Sexta — Review 1** | Incremento demonstrável, evidências, pendências e retrospectiva breve |

## Foco sugerido por squad

### Assistência Estudantil

Fechar o recorte técnico essencial que ainda impede a implementação e produzir
o menor incremento vertical possível. Resolver PRs pendentes faz parte do
planejamento.

### Flix

Selecionar o primeiro fluxo integrado que caiba na semana e torná-lo
reproduzível em ambiente de desenvolvimento.

### Segurança Campus

Definir o primeiro incremento demonstrável e distribuir implementação, revisão
e integração entre pessoas diferentes.

### D08 / SPIA

Transformar o resultado da primeira reunião formal em um recorte operacional:
responsáveis, regras de acesso, primeira entrega verificável e próximo
checkpoint. Informações sensíveis permanecem apenas nos ambientes autorizados.

## Quando pedir ajuda

Avisem o instrutor assim que ocorrer:

- bloqueio por mais de um dia;
- falta de acesso institucional;
- dúvida que altere o escopo ou a arquitetura;
- risco de não demonstrar o objetivo na sexta;
- necessidade de usar dados reais ou integração institucional;
- questão de segurança, privacidade ou LGPD.

Avisar cedo faz parte do trabalho profissional. Bloqueio escondido não protege
a equipe — apenas reduz o tempo disponível para ajudar.
