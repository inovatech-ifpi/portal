---
layout: hub
title: "Portfólio de Soluções & Showroom Tecnológico"
permalink: /portfolio/
description: "Soluções implantadas no IFPI e a frente estadual SPIA Maestro, com formação aplicada e cooperação institucional."
lang: pt
url_en: /en/portfolio/
---

{% assign facts = site.data.portal.facts %}
{% assign sgae = site.data.portal.projects | where: "slug", "sgae" | first %}
{% assign flix = site.data.portal.projects | where: "slug", "flix" | first %}
{% assign conecta = site.data.portal.projects | where: "slug", "conecta" | first %}
{% assign spia = site.data.portal.projects | where: "slug", "spia" | first %}
{% assign coordination = site.data.portal.public_contacts | where: "id", "coordination" | first %}
{% assign technical = site.data.portal.public_contacts | where: "id", "technical" | first %}
{% assign state_contact = site.data.portal.public_contacts | where: "id", "state" | first %}

<div class="hub-page-hero">
  <div class="hub-container hub-container--showroom">
    <div class="hub-hero-badge">
      <span class="hub-badge-dot" aria-hidden="true"></span>
      <span>SHOWROOM GOVTECH · IFPI & PIAUÍ GOV TECH</span>
    </div>
    <h1 class="hub-page-title">Soluções de Engenharia Aplicada em Produção</h1>
    <p class="hub-page-lead">
      Na Residência INOVATECH, o residente constrói produto. Cada solução parte de um setor público demandante, com regulamento e usuários reais, e combina implantação, evolução contínua e formalização da transferência aos setores demandantes.
    </p>

    {% include portfolio-ribbon.html %}

  </div>
</div>

<div class="hub-container hub-container--showroom hub-showroom-body">
  <!-- Navegação Rápida entre Casos -->
  <nav class="hub-showroom-nav mono" aria-label="Navegação rápida do portfólio">
    <span>IR PARA:</span>
    <a href="#sgae">01. SGAE</a>
    <a href="#flix">02. Projeto Flix</a>
    <a href="#conecta">03. Conecta CATCE</a>
    <a href="#spia">04. SPIA Maestro</a>
    <a href="#proximo-ciclo">05. Como Participar</a>
  </nav>

  <!-- CASO 01: SGAE -->
  <article class="hub-case-card" id="sgae">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">D02 · ASSISTÊNCIA ESTUDANTIL</span>
        <span class="badge-status">{{ sgae.stage | upcase }} · {{ site.data.portal.cycle.current_sprint_label | upcase }}</span>
      </div>
      <h2>SGAE — Sistema de Gestão da Assistência Estudantil</h2>
      <p class="hub-case-demandante mono">
        <strong>Demandante Institucional:</strong> Diretoria de Extensão / Coordenação de Assistência Estudantil · IFPI Central
      </p>
    <p class="dim">{{ sgae.handover.pt }} · {{ facts.checked_at }}</p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ facts.budget_pt }}</span>
        <span class="hub-metric-lbl">Orçamento POLAE</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">~{{ facts.students }}</span>
        <span class="hub-metric-lbl">Estudantes Atendidos</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ facts.aid_types }} Auxílios</span>
        <span class="hub-metric-lbl">Modalidades POLAE</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Histórico</span>
        <span class="hub-metric-lbl">Auditoria e Trilha</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>O Gargalo Público</h3>
          <p>
            A assistência estudantil administra <strong>{{ facts.aid_types }} modalidades de auxílios financeiros</strong> regulamentados pela POLAE (Resolução 35/2021). O programa atende cerca de <strong>{{ facts.students }} estudantes em vulnerabilidade social</strong>, com orçamento anual de <strong>{{ facts.budget_pt | remove: "/ano" }}</strong>.
          </p>
          <p>
            Antes do sistema, a operação dependia de planilhas despadronizadas manipuladas simultaneamente por servidores do setor. Esse processo manual gerava riscos operacionais: ausência de trilha de auditoria centralizada, conferência manual exaustiva de regras de acúmulo vedadas pela POLAE e inconsistências de dados bancários.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>A Solução de Engenharia</h3>
          <p>
            O SGAE transforma a concessão de bolsas em uma máquina de estados auditável e rastreável: <code>Estudante · Vínculo · Mês de Pagamento</code>.
          </p>
          <ul>
            <li><strong>Motor de Regras da POLAE:</strong> validação automática que aponta e bloqueia acúmulos vedados pela regulamentação no momento da concessão.</li>
            <li><strong>Folha de Pagamento Automatizada:</strong> compilação instantânea de remessas a partir de vínculos homologados, com histórico de aprovação, suspensão e cancelamento.</li>
            <li><strong>Segurança e LGPD:</strong> controle rigoroso de acesso com autenticação institucional, validação de dados bancários e proteção a dados pessoais.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Escalabilidade em Rede</h3>
          <p>
            A POLAE é a política pública unificada de assistência estudantil em toda a rede do IFPI. O SGAE foi arquitetado sobre esse alicerce universal, permitindo avaliar sua replicação em outros campi do IFPI, com levantamento de particularidades locais, governança e infraestrutura adequadas.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> POLAE Resolução 35/2021</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Máquina de Estados Auditável</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Motor Anti-Acúmulo</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Proteção LGPD</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Adaptação entre Campi</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Ficha Técnica & Arquitetura</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Demandante</span>
              <span class="hub-spec-value">Coordenação de Assistência Estudantil</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Operação</span>
              <span class="hub-spec-value">Produção Ativa · IFPI Central</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Arquitetura</span>
              <span class="hub-spec-value">{{ sgae.stack }}</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Governança</span>
              <span class="hub-spec-value">Portaria 783/2026-GAB/REI/IFPI</span>
            </div>
          </div>
        </div>
      </div>

      <div class="hub-case-media">
        <div class="hub-browser-frame">
          <div class="hub-browser-bar">
            <div class="hub-browser-dots" aria-hidden="true">
              <span class="hub-browser-dot dot--red"></span>
              <span class="hub-browser-dot dot--yellow"></span>
              <span class="hub-browser-dot dot--green"></span>
            </div>
            <div class="hub-browser-url mono">
              <span class="url-lock" aria-hidden="true">🔒</span>
              <span>SGAE · Módulo de pagamentos</span>
            </div>
            <div class="hub-browser-actions" aria-hidden="true">
              <span>⟳</span>
            </div>
          </div>
          <div class="hub-browser-screen">
            <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/portfolio/tela-sgae-pagamentos.jpg' | relative_url }}" data-lightbox-caption="Módulo de folha de pagamento do SGAE com verificação de conformidade POLAE e controle de status." aria-label="Ampliar captura de tela do SGAE">
              {% include imagem.html src="/assets/img/portfolio/tela-sgae-pagamentos.jpg" alt="Módulo de Gestão de Pagamentos e Folha do SGAE" class="hub-case-img" sizes="(min-width: 1100px) 560px, 100vw" %}
              <span class="hub-lightbox-zoom-hint mono">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                <span>Ampliar</span>
              </span>
            </button>
          </div>
        </div>
        <figcaption class="mono dim" style="padding: 0 4px; font-size: 11.5px; line-height: 1.45;">
          Módulo de folha de pagamento do SGAE com verificação de conformidade e controle de status. Captura demonstrativa com identificadores SEED.
        </figcaption>
        <div class="hub-case-card-stats mono">
          <div><span>Orçamento:</span> {{ facts.budget_pt }}</div>
          <div><span>Estudantes:</span> ~{{ facts.students }} beneficiários</div>
          <div><span>Auxílios:</span> {{ facts.aid_types }} categorias POLAE</div>
          <div><span>Equipe:</span> {{ sgae.residents }} residentes bolsistas</div>
        </div>
      </div>
    </div>

    <!-- Barra de Ações Contextuais -->
    <div class="hub-case-actions">
      <a href="mailto:{{ coordination.email }},{{ technical.email }}?subject=[SGAE]%20Solicita%C3%A7%C3%A3o%20de%20Homologa%C3%A7%C3%A3o%20/%20Expans%C3%A3o%20Multi-Campus" class="hub-case-action-btn primary mono">
        <span>Solicitar Homologação / Expansão Multi-Campus →</span>
      </a>
      <a href="#proximo-ciclo" class="hub-case-action-btn secondary mono">
        <span>Conversar sobre Governança</span>
      </a>
    </div>
  </article>

  <!-- CASO 02: FLIX -->
  <article class="hub-case-card hub-case-card--streaming" id="flix">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">D05 · COMUNICAÇÃO & MÍDIA</span>
        <span class="badge-status">EM PRODUÇÃO NO IFPI · {{ site.data.portal.cycle.current_sprint_label | upcase }}</span>
      </div>
      <h2>Projeto Flix — Repositório Interativo de Conteúdo Institucional</h2>
      <p class="hub-case-demandante mono">
        <strong>Demandante Institucional:</strong> Reitoria do IFPI · Validação com Reitoria e Comunicação Social
      </p>
    <p class="dim">{{ flix.handover.pt }} · {{ facts.checked_at }}</p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Multi-Campus</span>
        <span class="hub-metric-lbl">Escopo da Rede IFPI</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Gestão Autônoma</span>
        <span class="hub-metric-lbl">Autonomia para Gestores</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Low-Bandwidth</span>
        <span class="hub-metric-lbl">Otimizado para Mobile</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ flix.residents }} Residentes</span>
        <span class="hub-metric-lbl">Squad Especializado</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>O Gargalo Público</h3>
          <p>
            O Instituto Federal produz um volume expressivo de projetos de pesquisa, extensões comunitárias, aulas abertas e iniciativas institucionais. Contudo, essa produção ficava dispersa em diferentes canais de redes sociais, diretórios de arquivos e sistemas acadêmicos fechados.
          </p>
          <p>
            Para uma família do interior do estado ou um futuro estudante buscando orientação de cursos, não existia uma porta de entrada centralizada e amigável para conhecer o ecossistema educacional do IFPI.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>A Solução de Engenharia</h3>
          <p>
            O Projeto Flix estrutura a produção institucional em um modelo moderno de catálogo de streaming educacional:
          </p>
          <ul>
            <li><strong>Navegação Fluida por Séries e Cursos:</strong> descoberta intuitiva por campi, áreas do conhecimento e projetos com trailers, busca textual e trilhos temáticos.</li>
            <li><strong>Painel Administrativo para Gestores:</strong> interface simplificada para servidores e coordenadores organizarem playlists, tags e visibilidade pública com autonomia no cadastro de conteúdos.</li>
            <li><strong>Acessibilidade e Desempenho:</strong> layout otimizado para conexões variáveis e navegação acessível em smartphones e computadores públicos.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Escalabilidade em Rede</h3>
          <p>
            O catálogo foi concebido para integração de toda a rede: cada campus do Instituto Federal pode gerenciar sua própria série de cursos e pesquisas dentro de um repositório federado.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Catálogo Streaming Sob Demanda</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Gestão de Conteúdo para Servidores</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Trilhos Temáticos & Séries</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Otimização Low-Bandwidth</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Repositório Federado</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Ficha Técnica & Arquitetura</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Demandante</span>
              <span class="hub-spec-value">Reitoria & Comunicação Social</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Operação</span>
              <span class="hub-spec-value">Produção Ativa · IFPI</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Arquitetura</span>
              <span class="hub-spec-value">{{ flix.stack }}</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Audiência</span>
              <span class="hub-spec-value">Comunidade Acadêmica e Sociedade</span>
            </div>
          </div>
        </div>
      </div>

      <div class="hub-case-media">
        <div class="hub-browser-frame">
          <div class="hub-browser-bar">
            <div class="hub-browser-dots" aria-hidden="true">
              <span class="hub-browser-dot dot--red"></span>
              <span class="hub-browser-dot dot--yellow"></span>
              <span class="hub-browser-dot dot--green"></span>
            </div>
            <div class="hub-browser-url mono">
              <span class="url-lock" aria-hidden="true">🔒</span>
              <span>Projeto Flix · Catálogo institucional</span>
            </div>
            <div class="hub-browser-actions" aria-hidden="true">
              <span>⟳</span>
            </div>
          </div>
          <div class="hub-browser-screen">
            <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }}" data-lightbox-caption="Página inicial do Projeto Flix com destaque visual e organização por trilhos de conteúdo." aria-label="Ampliar captura de tela do Projeto Flix">
              {% include imagem.html src="/assets/img/portfolio/tela-flix-home.jpg" alt="Interface pública do catálogo streaming Projeto Flix" class="hub-case-img" sizes="(min-width: 1100px) 560px, 100vw" %}
              <span class="hub-lightbox-zoom-hint mono">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                <span>Ampliar</span>
              </span>
            </button>
          </div>
        </div>
        <figcaption class="mono dim" style="padding: 0 4px; font-size: 11.5px; line-height: 1.45;">
          Página inicial do Projeto Flix com destaque visual e organização por trilhos de conteúdo.
        </figcaption>
        <div class="hub-case-card-stats mono">
          <div><span>Público:</span> Comunidade acadêmica e externa</div>
          <div><span>Escopo:</span> Toda a rede IFPI</div>
          <div><span>Formato:</span> Catálogo streaming sob demanda</div>
          <div><span>Equipe:</span> {{ flix.residents }} residentes bolsistas</div>
        </div>
      </div>
    </div>

    <!-- Barra de Ações Contextuais -->
    <div class="hub-case-actions">
      <a href="mailto:{{ coordination.email }},{{ technical.email }}?subject=[IFPI%20Flix]%20Interesse%20em%20Demonstra%C3%A7%C3%A3o%20e%20Federa%C3%A7%C3%A3o" class="hub-case-action-btn primary mono">
        <span>Solicitar Demonstração do Catálogo →</span>
      </a>
      <a href="#proximo-ciclo" class="hub-case-action-btn secondary mono">
        <span>Conversar sobre Expansão</span>
      </a>
    </div>
  </article>

  <!-- CASO 03: CONECTA CATCE -->
  <article class="hub-case-card" id="conecta">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">D07 · CONTROLE DE ACESSO & IOT</span>
        <span class="badge-status">IMPLANTADO NO IFPI · MANTENEDOR DTI</span>
      </div>
      <h2>Conecta CATCE (Catraka) — Segurança e Controle de Acesso</h2>
      <p class="hub-case-demandante mono">
        <strong>Demandante Institucional:</strong> Direção-Geral do Campus Teresina Central · Apoio DTI
      </p>
    <p class="dim">{{ conecta.handover.pt }} · {{ facts.checked_at }}</p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Acesso</span>
        <span class="hub-metric-lbl">Gestão de Portaria</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Integração</span>
        <span class="hub-metric-lbl">Portaria em Evolução</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">GOV.BR</span>
        <span class="hub-metric-lbl">Design System Oficial</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ conecta.residents }} Residentes</span>
        <span class="hub-metric-lbl">Squad de Engenharia</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>O Gargalo Público</h3>
          <p>
            O Campus Central já utilizava um controle proprietário em aplicação desktop nas portarias. Suas limitações de integração dificultavam conectar a gestão de acessos a outras aplicações institucionais.
          </p>
          <p>
            Além disso, os pais e responsáveis legais de estudantes adolescentes do Ensino Médio Integrado não tinham qualquer canal digital direto para acompanhar a presença dos filhos ou receber informativos institucionais imediatos da diretoria.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>A Solução de Engenharia</h3>
          <p>
            Arquitetura integrada em dois componentes sobre a mesma base tecnológica:
          </p>
          <ul>
            <li><strong>Catraka CATCE:</strong> backend e interface de portaria preparado para integração com catracas eletrônicas e validação de credenciais de acesso físico.</li>
            <li><strong>Conecta CATCE (App para Responsáveis):</strong> aplicativo móvel para famílias com vinculação segura de alunos, comunicados, atendimento e mural de avisos oficiais. As notificações de movimentação dependem da integração com a portaria, em evolução com a DTI.</li>
            <li><strong>Design System GOV.BR:</strong> interface construída em rigorosa conformidade com os padrões oficiais de usabilidade e identidade visual do Governo Federal.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Escalabilidade em Rede</h3>
          <p>
            A segurança física das portarias e a comunicação assertiva com famílias são desafios compartilhados pela rede federal de educação.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Design System GOV.BR Oficial</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Integração IoT Catracas Físicas</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Notificações condicionadas à integração</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Vínculo Seguro SUAP</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Trilha de Presença Auditável</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Ficha Técnica & Arquitetura</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Demandante</span>
              <span class="hub-spec-value">Direção-Geral · IFPI Central</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Operação</span>
              <span class="hub-spec-value">Implantado · Formalização em andamento</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Arquitetura</span>
              <span class="hub-spec-value">{{ conecta.stack }}</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Padrão Visual</span>
              <span class="hub-spec-value">Padrão Digital de Governo (GOV.BR)</span>
            </div>
          </div>
        </div>
      </div>

      <div class="hub-case-media">
        <div class="hub-mobile-suite-frame-wrapper">
          <div class="hub-mobile-suite-frame">
            <div class="hub-mobile-suite-bar mono">
              <div class="hub-mobile-suite-badge">
                <span class="hub-badge-dot" aria-hidden="true"></span>
                <span>SUÍTE MOBILE INTEGRADA · 4 TELAS</span>
              </div>
              <span style="color: #94a3b8; font-size: 10px;">PADRÃO GOV.BR</span>
            </div>
            <div class="hub-mobile-suite-screen">
              <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }}" data-lightbox-caption="Visão integrada da suíte mobile Conecta CATCE em 4 módulos. Clique para ampliar e inspecionar cada tela em alta definição." aria-label="Ampliar suíte mobile Conecta CATCE">
                {% include imagem.html src="/assets/img/portfolio/tela-conecta-app.jpg" alt="Visão integrada das 4 telas do aplicativo Conecta CATCE" class="hub-case-img" sizes="(min-width: 1100px) 560px, 100vw" %}
                <span class="hub-lightbox-zoom-hint mono">
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                  <span>Ampliar</span>
                </span>
              </button>
            </div>
          </div>
        </div>
        <figcaption class="mono dim" style="padding: 0 4px; font-size: 11.5px; line-height: 1.45; text-align: center;">
          Visão integrada da suíte mobile Conecta CATCE em 4 módulos. Clique para ampliar e inspecionar cada tela em alta definição.
        </figcaption>
        <div class="hub-case-card-stats mono">
          <div><span>Padrão visual:</span> Padrão Digital GOV.BR</div>
          <div><span>Público:</span> Pais, responsáveis e alunos</div>
          <div><span>Integração:</span> Portaria física e SUAP</div>
          <div><span>Equipe:</span> {{ conecta.residents }} residentes bolsistas</div>
        </div>
      </div>
    </div>

    <!-- Barra de Ações Contextuais -->
    <div class="hub-case-actions">
      <a href="mailto:{{ coordination.email }},{{ technical.email }}?subject=[Conecta%20CATCE]%20Implanta%C3%A7%C3%A3o%20no%20Campus" class="hub-case-action-btn primary mono">
        <span>Avaliar Implantação no Campus →</span>
      </a>
      <a href="#proximo-ciclo" class="hub-case-action-btn secondary mono">
        <span>Conversar sobre Integrações</span>
      </a>
    </div>
  </article>

  <!-- CASO 04: SPIA MAESTRO -->
  <article class="hub-case-card hub-case-card--assurance hub-case-card-restricted" id="spia">
    <div class="hub-assurance-seal mono">
      <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
      <span>CLASSIFICAÇÃO OPERACIONAL SSP-PI · LEI 13.709/2018 (LGPD)</span>
      <span class="seal-verified"><svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><polyline points="20 6 9 17 4 12"></polyline></svg> Protocolo Ativo</span>
    </div>

    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">D08 · SEGURANÇA PÚBLICA & GOVERNO</span>
        <span class="badge-status-restricted">OPERAÇÃO NA SSP-PI · SIGILO LEGAL</span>
      </div>
      <h2>SPIA Maestro — Parceria em Inteligência de Segurança Pública</h2>
      <p class="hub-case-demandante mono">
        <strong>Demandante Institucional:</strong> Secretaria da Segurança Pública do Estado do Piauí (SSP-PI) · via Piauí Gov Tech
      </p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Disponibilidade</span>
        <span class="hub-metric-lbl">Requisito Operacional</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Rastreabilidade</span>
        <span class="hub-metric-lbl">Trilha Criptográfica LGPD</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Sigilo Legal</span>
        <span class="hub-metric-lbl">Protocolo SSP-PI</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ spia.residents }} Residentes</span>
        <span class="hub-metric-lbl">Squad de Alta Confiabilidade</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>O Contexto e a Missão Institucional</h3>
          <p>
            O SPIA é o sistema estadual de monitoramento eletrônico da Segurança Pública do Piauí. O projeto Maestro atua na automação de processos de inteligência e despacho de informações de segurança.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>A Contribuição da Residência</h3>
          <p>
            {{ spia.residents }} residentes da Residência INOVATECH atuam no desenvolvimento evolutivo da infraestrutura do Maestro, sob a supervisão técnica direta e as rígidas diretrizes de confidencialidade da Secretaria da Segurança Pública:
          </p>
          <ul>
            <li>Desenvolvimento contínuo de serviços de alta disponibilidade e auditoria.</li>
            <li>Integração segura com as bases operacionais sob rigoroso controle de autorização e conformidade com a LGPD.</li>
            <li>Trilhas ininterruptas de auditoria operacional para garantia de transparência na atuação policial.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Rigor Formativo e Sigilo Legal</h3>
          <p>
            Os residentes vivenciam o desenvolvimento de software sob requisitos de criticidade real, onde a consistência dos dados é questão de segurança pública. Por razões legais e estratégicas da SSP-PI, arquiteturas internas, servidores, centrais e integrantes permanecem sob estrito sigilo.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Segurança Pública Estadual</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Monitoramento Inteligente</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Trilha de Auditoria Imutável</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Autorização e LGPD Estritas</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Microsserviços de Alta Vazão</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Ficha Técnica & Arquitetura</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Demandante</span>
              <span class="hub-spec-value">Secretaria de Segurança Pública (SSP-PI)</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Operação</span>
              <span class="hub-spec-value">Operação Assistida em Infraestrutura SSP-PI</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Arquitetura</span>
              <span class="hub-spec-value">Microsserviços Resilientes · Event-Driven</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Conformidade</span>
              <span class="hub-spec-value">Sigilo de Segurança Pública & LGPD</span>
            </div>
          </div>
        </div>
      </div>

      <div class="hub-case-media">
        <div class="hub-assurance-photo-frame">
          <div class="hub-assurance-photo-header mono">
            <div class="hub-assurance-photo-header-left">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
              <span>REGISTRO INSTITUCIONAL AUTORIZADO SSP-PI</span>
            </div>
            <div class="hub-assurance-photo-header-right">
              <span>● AUDITADO</span>
            </div>
          </div>
          <div class="hub-assurance-photo-screen">
            <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/equipes/foto-spia-equipe.jpg' | relative_url }}" data-lightbox-caption="Apresentação autorizada do Squad SPIA Maestro no Encontro INOVATECH no Espaço PiauíGovTec." aria-label="Ampliar foto oficial do Squad SPIA Maestro">
              {% include imagem.html src="/assets/img/equipes/foto-spia-equipe.jpg" alt="Squad SPIA Maestro no Encontro INOVATECH" class="hub-case-img" sizes="(min-width: 1100px) 560px, 100vw" %}
              <span class="hub-lightbox-zoom-hint mono">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                <span>Ampliar</span>
              </span>
            </button>
          </div>
          <div class="hub-assurance-photo-footer mono">
            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><polyline points="20 6 9 17 4 12"></polyline></svg>
            <span>Registro Oficial Homologado · Apresentação no Espaço PiauíGovTec</span>
          </div>
        </div>
        <div class="hub-case-card-stats mono">
          <div><span>Infraestrutura:</span> Secretaria de Segurança Pública</div>
          <div><span>Regulamento:</span> Sigilo de Segurança Pública</div>
          <div><span>Critério:</span> Confiabilidade e auditoria</div>
          <div><span>Equipe:</span> {{ spia.residents }} residentes bolsistas</div>
        </div>
      </div>
    </div>

    <!-- Barra de Ações Contextuais -->
    <div class="hub-case-actions">
      <a href="mailto:{{ state_contact.email }},{{ coordination.email }}?subject=[SPIA%20Maestro]%20Coopera%C3%A7%C3%A3o%20Institucional%20em%20GovTech" class="hub-case-action-btn primary mono">
        <span>Cooperação Institucional em GovTech →</span>
      </a>
      <a href="#proximo-ciclo" class="hub-case-action-btn secondary mono">
        <span>Conversar sobre Cooperação</span>
      </a>
    </div>
  </article>

  <!-- SEÇÃO 05: COMO PARTICIPAR E PRÓXIMO CICLO -->
  <section class="hub-showroom-cta-box" id="proximo-ciclo">
    <div class="hub-showroom-cta-head">
      <p class="hub-kicker">Oportunidades & Expansão</p>
      <h2>Como cooperar com o INOVATECH</h2>
      <p class="hub-section-lead">
        A primeira fase comprovou o método, a velocidade e o rigor técnico das entregas. O ciclo atual abre oportunidades para três modalidades de engajamento institucional:
      </p>
    </div>

    <div class="hub-colabore-grid" style="margin-top: 32px;">
      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">01</div>
        <h3>Apresentar Demanda Institucional</h3>
        <p>
          Órgão público aporta um desafio real, acesso a usuários-chave e ponto focal técnico. A proposta passa por avaliação de escopo, capacidade e formalização institucional antes da mobilização de residentes e instrutores.
        </p>
      </div>

      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">02</div>
        <h3>Apoiar Continuidade e Escala</h3>
        <p>
          Parcerias para operação assistida e ampliação de impacto das soluções implantadas (SGAE, Flix, Conecta), com mensuração de resultados reais em produção em outros campi e órgãos.
        </p>
      </div>

      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">03</div>
        <h3>Financiar Nova Turma</h3>
        <p>
          Replicação do programa de residência para novas secretarias e pastas de governo: diagnóstico de competências, formação orientada a produtos prioritários e entregas auditáveis.
        </p>
      </div>
    </div>

    <div class="hub-showroom-contacts">{% include contatos.html %}</div>
  </section>
</div>
