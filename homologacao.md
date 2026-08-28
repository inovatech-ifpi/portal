---
layout: page
title: "Homologação — colocar no ar no ambiente do IFPI"
permalink: /homologacao/
kicker: "// fase 1 · semana 14 · encerrada em 14/08/2026"
nav_icon: "▲"
nav_title: "Homologação"
---

Semana 14 — **10 a 14/08/2026**

Prazo — **sexta-feira, 14/08**

> O M3 fechou em 07/08 com o código pronto, mas os acessos de infraestrutura da
> DTI só chegaram na própria sexta. Sem servidor não há como colocar nada no ar,
> e é só isso que falta. Esta semana existe para isso: pegar o que já está
> construído e fazer rodar no ambiente do IFPI.

## O que vale e o que não vale

**Escopo congelado.** Não entra funcionalidade nova, mudança de regra de negócio
nem refatoração. Se aparecer um bug durante a implantação e ele não impedir o
sistema de rodar, abra uma issue nova e siga em frente.

O critério de fechamento é simples e é um só: **o sistema de pé, acessível e
estável no ambiente do IFPI.** Não é "roda na minha máquina", não é "o container
sobe local". É a aplicação no servidor, com endereço que outra pessoa consegue
abrir.

## Os dois níveis do prazo

Eles não têm o mesmo peso, e vale entender a diferença:

- **Obrigatório até sexta, 14/08** — a aplicação rodando no servidor do IFPI.
  Isso não escorrega.
- **Desejável na mesma semana** — a validação com o demandante. Depende da agenda
  de gente que não é da equipe, então se não couber, passa para a semana de 17 a
  21/08 sem prejuízo nenhum.

## Checklist de implantação

Cada equipe tem a sua issue de homologação no repositório, com este mesmo
checklist. Ela é a referência da semana:

- [ ] arquivo de ambiente de produção preenchido com as credenciais reais da DTI,
      **fora do repositório**;
- [ ] aplicação no ar sob HTTPS (certificado válido, ou autoassinado com o motivo
      registrado na documentação);
- [ ] todos os containers em estado saudável;
- [ ] rotas principais validadas: API, arquivos estáticos e de mídia, área
      administrativa e a aplicação em si;
- [ ] banco migrado e com carga inicial mínima, **sem nenhum dado pessoal real**;
- [ ] usuário de teste criado para o demandante conseguir entrar e validar;
- [ ] roteiro de homologação escrito no README ou em `docs/`: o que o validador
      deve abrir e clicar, na ordem;
- [ ] procedimento de reinício e de retorno à versão anterior documentado;
- [ ] evidência anexada na issue: endereço de acesso e capturas de tela.

## Sobre credenciais

As credenciais de produção da DTI não entram no repositório em hipótese alguma —
nem em arquivo de exemplo, nem em comentário, nem em print anexado na issue. Se
alguma escapar num commit, avise o instrutor no mesmo dia: trocar a credencial é
rápido, descobrir semanas depois que ela está no histórico não é.

O mesmo vale para os dados de carga inicial. Ambiente de demonstração usa dado
fictício. Nenhum sistema desta residência sobe com dado real de aluno,
servidor ou responsável.

## Onde registrar

Na issue de homologação do próprio repositório, com evidência anexada. É de lá
que sai o relato de fechamento do ciclo — se não estiver registrado na issue,
não conta como entregue.
