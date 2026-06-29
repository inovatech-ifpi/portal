---
layout: page
title: "Plano de Testes (template)"
permalink: /templates/plano-testes/
---

> 📋 **Para usar:** copie este modelo para o `docs/` do repositório da sua equipe e preencha.
> Para copiar o markdown cru, abra [esta página no GitHub](https://github.com/inovatech-ifpi/portal/blob/main/templates/plano-testes.md) e use o botão de copiar.

# Plano de Testes — [Projeto] — Squad [X]

> Template da metodologia. Artefato do **Gate Técnico** (03/07). Define como vamos garantir que a solução funciona, antes de codar muito.

## 1. Estratégia de testes

Em 3–5 linhas: o que será testado, em que níveis (unidade, integração, manual/aceite), e quem testa.

## 2. Critérios de aceite (BDD) das histórias prioritárias

Para cada história do Sprint 1, escreva no formato Dado / Quando / Então.

```gherkin
Funcionalidade: [nome da funcionalidade]

  Cenário: [caso principal]
    Dado que [contexto inicial]
    Quando [ação do usuário]
    Então [resultado esperado]
```

## 3. Casos de teste planejados

| ID | O que testa | Tipo (unidade/integração/manual) | Resultado esperado |
|---|---|---|---|
| CT-01 | | | |

## 4. Ambiente e dados de teste

- Onde os testes rodam (local, CI, ambiente de homologação).
- Que dados de teste serão usados (nunca dados pessoais reais de residentes/usuários).

## 5. Definição de "pronto" (Definition of Done)

- [ ] Critérios de aceite atendidos
- [ ] Testado conforme os casos acima
- [ ] Sem dado sensível real em ambiente de teste
- [ ] Code review feito
