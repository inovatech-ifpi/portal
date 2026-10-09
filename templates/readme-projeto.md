---
layout: page
title: "README para Começar um Projeto (template)"
permalink: /templates/readme-projeto/
---

> 📋 **Para usar:** copie este modelo para o `README.md` na raiz do seu repositório e preencha.
> Para copiar o markdown cru, abra [esta página no GitHub](https://github.com/inovatech-ifpi/portal/blob/main/templates/readme-projeto.md) e use o botão de copiar.

# [Nome do projeto]

> Copie este modelo para `README.md` na raiz do seu repositório. Substitua os campos entre colchetes e apague as instruções que não se aplicarem. Publique somente informações autorizadas pelo demandante.

## Problema e resultado esperado

**Problema observado:** [Descreva em duas frases o problema de uma pessoa ou setor real.]

**Resultado esperado:** [O que deve melhorar e como será observado.]

**Quem usa:** [Perfis de usuários, sem nomes ou dados pessoais.]

## Dono e demandante

| Papel | Identificação institucional | Responsabilidade |
|---|---|---|
| Demandante | [Órgão/setor ou laboratório] | Define a necessidade e prioriza o escopo. |
| Ponto focal de validação | [Cargo/função; canal institucional, se público] | Testa o incremento e registra o aceite ou os ajustes em [link da issue/ata]. |
| Responsável técnico | [Equipe ou função mantenedora] | Revisa código, acompanha a operação e recebe o repasse. |

> Antes de iniciar, confirme com o demandante quem pode validar o resultado. Em repositório público, não publique contatos pessoais, credenciais, dados de estudantes ou detalhes operacionais restritos.

## Matriz de escopo

| Dentro desta entrega | Fora desta entrega |
|---|---|
| [Funcionalidade ou fluxo 1, com usuário definido] | [Funcionalidade adiada ou dependente de terceiro] |
| [Funcionalidade ou fluxo 2] | [Integração ainda não acordada] |

**Critério de mudança de escopo:** [Quem decide, onde a decisão é registrada e como o prazo será revisto.]

## Estado atual e evidências

**Estado:** [ideia / protótipo / desenvolvimento / homologação / produção / transferido]  
**Última validação:** [data, ambiente e link para registro de aceite, demonstração ou teste]  
**Pendências:** [link para o quadro de issues; cada pendência deve ter responsável e próximo passo]

## Como executar localmente

**Pré-requisitos:** [linguagem e versão, banco, gerenciador de pacotes, serviços necessários]

1. Clone o repositório e instale as dependências: `[comando]`.
2. Copie `.env.example` para `.env` e preencha os valores locais permitidos.
3. Prepare o banco ou os dados de exemplo: `[comando]`.
4. Inicie a aplicação: `[comando]`.
5. Acesse `[URL local]` e verifique `[fluxo básico esperado]`.
6. Rode os testes: `[comando]`.

Se o projeto ainda não executa, registre o bloqueio e o responsável em uma issue. Não marque o critério de pronto como concluído.

## Variáveis de ambiente

Mantenha no repositório um `.env.example` **sem valores secretos**. Descreva aqui apenas nomes, finalidade e exemplos fictícios.

| Variável | Finalidade | Exemplo não secreto | Obrigatória? |
|---|---|---|---|
| `APP_ENV` | Seleciona o ambiente. | `development` | Sim |
| `DATABASE_URL` | Aponta para o banco local ou de teste. | `postgresql://localhost:5432/projeto` | [Sim/Não] |
| `[NOME_DA_VARIAVEL]` | [Finalidade] | `[valor fictício]` | [Sim/Não] |

**Segredos de produção:** [Nome do cofre ou procedimento institucional de acesso, sem URL privada, usuário, token ou senha.] Nunca registre o valor no README, no `.env.example`, em issues ou no histórico do Git. Liste no `.gitignore` os arquivos locais com segredos.

## Critério de pronto (Definition of Done)

Marque cada item somente com evidência verificável. Adapte o escopo ao estágio do projeto e documente o que ainda falta.

- [ ] O demandante validou o problema, o escopo e os critérios de aceite em [link].
- [ ] A funcionalidade prometida funciona no ambiente declarado, com demonstração ou teste em [link].
- [ ] Outra pessoa revisou a mudança antes da integração; testes e verificações relevantes passaram em [link].
- [ ] Dados pessoais usados em teste são fictícios ou autorizados; acesso e registros foram avaliados para a finalidade do projeto.
- [ ] README, arquitetura essencial e instruções de instalação refletem a versão entregue.
- [ ] Variáveis estão documentadas; credenciais e dados reais permanecem fora do repositório.
- [ ] Pendências, limitações e dependências externas estão em issues com responsável e próximo passo.
- [ ] O ponto focal confirmou o aceite do incremento em [link e data].

**Para declarar transferência concluída, verificar também:**

- [ ] Mantenedor institucional identificado e ciente; canal de suporte definido.
- [ ] Runbook de operação disponível: iniciar, parar, localizar logs, fazer backup e restaurar.
- [ ] Procedimento de restart e rollback testado ou limitação registrada e aceita.
- [ ] Inventário de acessos e localização dos segredos entregue por canal restrito.
- [ ] Termo ou registro institucional de repasse aceito pelo demandante em [link ou referência interna].

## Checklist de repasse técnico

| Item | Onde encontrar | Situação / responsável |
|---|---|---|
| Código, versão entregue e instruções de instalação | [link do repositório, tag e seção deste README] | [situação] |
| Arquitetura, serviços externos e dependências | [link do diagrama ou documento] | [situação] |
| Runbook, logs, backup e restauração | [link do documento autorizado] | [situação] |
| Testes, homologação e evidências de aceite | [links] | [situação] |
| Acessos e segredos | [nome do cofre/canal restrito, sem valores] | [situação] |
| Pendências e riscos aceitos | [links das issues ou registro restrito] | [situação] |
| Mantenedor, canal de suporte e registro de transferência | [função e referência institucional] | [situação] |

## Documentação e licença

- **Decisões e arquitetura:** [link].
- **Backlog e critérios de aceite:** [link].
- **Licença e permissão de uso do código/conteúdo:** [definida pelo titular institucional; não presuma licença aberta].
