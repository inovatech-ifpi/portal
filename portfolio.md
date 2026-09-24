---
layout: page
title: "Portfólio"
permalink: /portfolio/
kicker: "// o que a residência entregou e como entrar"
description: "Quatro frentes com demandante real, três sistemas implantados no IFPI e uma frente em execução com o Governo do Estado"
nav_icon: "▣"
nav_title: "Portfólio"
url_en: /en/portfolio/
---

A **Residência INOVATECH** é um programa de formação em tecnologia do IFPI Campus Teresina Central
em parceria com a Piauí Gov Tech / ETIPI. Quinze residentes, bolsistas de 20 h semanais, trabalham
em equipes sobre problemas reais de setores do IFPI e do Governo do Estado, acompanhados por
instrutores do campus, com marcos quinzenais, código em repositório institucional e homologação com
quem vai usar o sistema.

<div class="table-wrap">
  <table>
    <tbody>
      <tr><td><strong>15</strong> residentes em <strong>4</strong> frentes com demandante real</td><td><strong>208</strong> itens de trabalho concluídos e <strong>148</strong> PRs integrados</td></tr>
      <tr><td><strong>4 de 4</strong> marcos formais cumpridos no prazo pelas equipes do IFPI</td><td><strong>3</strong> frentes com soluções implantadas no IFPI (em evolução na Sprint E1)</td></tr>
      <tr><td><strong>1</strong> frente em operação com o Governo do Estado (SSP-PI)</td><td>Frentes em diálogo aberto com Governo e Justiça (DPE-PI, MPPI, ETIPI)</td></tr>
    </tbody>
  </table>
</div>

<p class="mono dim">Primeira fase: 12/05 a 14/08/2026 (desenvolvimento) e 11/09 (Encontro INOVATECH) · Situação em 23/09/2026</p>

O que diferencia o modelo: o residente não faz exercício, faz produto. Cada frente tem um setor que
pediu, um regulamento ou processo real por trás e um marco de **transferência** no fim — o sistema
só é considerado entregue quando o setor nomeou quem mantém, recebeu o runbook e assinou o termo.

---

## SGAE — Sistema de Gestão da Assistência Estudantil

<p class="mono dim">Demandante: Diretoria de Extensão / Assistência Estudantil · estado: implantado no IFPI, em evolução contínua em produção (Sprint E1) e transferência formal em andamento</p>

**O problema.** A assistência estudantil do campus administra sete tipos de auxílio, cada um com
regra própria de elegibilidade e acúmulo definida na POLAE (Resolução 35/2021), para cerca de 580
estudantes beneficiários e um orçamento de R$ 1,1 milhão por ano. O controle era feito em planilha
compartilhada por oito pessoas, com limitações de rastreabilidade, conferência manual de acúmulos e
digitação de dados bancários.

**A solução.** Cada vínculo aprovado vira um registro rastreável (aluno · bolsa · mês), do cadastro
ao pagamento. As regras da POLAE rodam no sistema e o acúmulo indevido é apontado na hora. Folha de
pagamento gerada a partir dos vínculos, com aprovação, suspensão e reprovação auditadas. Proteção e
validação de dados bancários em conformidade com a LGPD, controle de acesso e trilha de auditoria.

**Além do campus.** A POLAE é a política de assistência estudantil de todo o IFPI. O SGAE foi
desenhado com a mesma base de regras e uma estrutura de dados pronta para outro campus sem
reescrever o sistema.

---

## Projeto Flix — repositório de conteúdo institucional

<p class="mono dim">Demandante: Reitoria do IFPI · estado: implantado, escopo validado com a Reitoria, em evolução em produção (Sprint E1) e preparação para transferência</p>

![Catálogo do Repositório IFPI, com projeto em destaque]({{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }})

**O problema.** Uma família do interior querendo saber como matricular um filho no IFPI, ou a
sociedade querendo conhecer o que a instituição produz, não encontra isso de forma organizada. O
conteúdo existe, disperso em site, redes sociais e SUAP, mas não há um ponto de entrada pensado para
quem não é da casa.

**A solução.** Um repositório interativo com navegação em formato de catálogo de streaming: a pessoa
navega por campi, cursos e projetos com vídeo em destaque, busca e trilhos temáticos. Para quem
publica, um Painel do Gestor simples: grupos, séries, vídeos por série, tags e visibilidade ao
público sem depender de equipe técnica.

**Além do campus.** O catálogo é por natureza da rede inteira: cada campus vira uma "série" com seus
cursos e projetos. Acesso à informação é acesso à educação.

---

## Conecta CATCE e Catraka CATCE — segurança e controle de acesso

<p class="mono dim">Demandante: Direção-Geral do Campus Teresina Central · estado: implantados no IFPI, mantenedor confirmado pela DTI, em evolução (Sprint E1); integração com portaria pendente</p>

![As quatro telas do aplicativo Conecta CATCE]({{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }})

**O problema.** O campus não tinha um sistema integrado de controle de acesso. O registro de entradas
e saídas era manual e fragmentado, sem rastreabilidade. E as famílias não tinham como acompanhar, à
distância, a presença do estudante no campus nem receber comunicados oficiais.

**A solução.** Dois produtos sobre a mesma base. **Catraka CATCE**, o controle de acesso projetado
para integrar-se à portaria. **Conecta CATCE**, o aplicativo para responsáveis: ver o estudante
vinculado, receber notificações de entrada e saída em tempo real, comunicados do campus e um canal de
atendimento sem sair de casa. Identidade visual no Design System GOV.BR.

**Além do campus.** Portaria e comunicação com as famílias são problema comum a todo campus com ensino
médio integrado.

---

## SPIA Maestro — frente com a Secretaria da Segurança Pública do Piauí

<p class="mono dim">Demandante: SSP-PI, via Piauí Gov Tech · estado: operacional na infraestrutura da SSP-PI, residentes atuando no desenvolvimento evolutivo sob condução técnica da Secretaria</p>

**O contexto e o papel do produto.** O Maestro é um projeto preexistente da SSP-PI para automação do
videomonitoramento: lê ocorrências nas bases policiais, valida os dados, distribui alvos às câmeras do
estado e os remove quando a ocorrência é sanada, com estrita rastreabilidade e auditoria.

**A contribuição da residência.** Quatro residentes alocados no produto existente, sob a supervisão e as
regras de segurança e sigilo da Secretaria: integração ao código e arquitetura da equipe mantenedora e
desenvolvimento contínuo a partir do backlog institucional.

**Experiência formativa.** Atuação em sistema de segurança pública real e de alta criticidade, com
requisitos de conformidade com a LGPD, controle de credenciais e qualidade de dados que superam
projetos acadêmicos convencionais.

---

## Próximo ciclo e como entrar

A primeira fase comprovou o método e a qualidade técnica das entregas. O ciclo atual abre oportunidades
para três modalidades de participação:

**1. Apresentar uma demanda institucional.** Um órgão parceiro aporta um problema real, acesso aos
usuários e ponto focal. O INOVATECH entra com equipe dedicada de residentes, instrutor de referência,
marcos quinzenais, testes e transferência formal documentada.

**2. Apoiar continuidade e operação assistida.** Apoio para operação assistida e ampliação de impacto
dos sistemas desenvolvidos, com mensuração de resultados reais em produção (sem assunção de manutenção
perpétua pelo IFPI).

**3. Financiar uma nova turma.** Replicação do programa para novos desafios de governo: seleção e
diagnóstico de competências, formação orientada a projetos prioritários e entregas por marcos
auditáveis.

<p class="mono"><strong>Contato:</strong> Coordenação-Geral da Residência INOVATECH — Prof. Franciéric Alves de Araújo · IFPI Campus Teresina Central · E-mail: <a href="mailto:eric@ifpi.edu.br">eric@ifpi.edu.br</a><br><strong>Articulação Estadual:</strong> Piauí Gov Tech · <a href="mailto:adm@piauigovtech.org">adm@piauigovtech.org</a> · <a href="https://piauigovtech.org">piauigovtech.org</a></p>
