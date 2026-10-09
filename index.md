---
layout: hub
title: "Hub de Inovação & Fábrica de Soluções"
permalink: /
description: "Ecossistema de inovação e engenharia de software aplicada do IFPI e PiauíGovTec. Transformamos desafios reais em software público em produção."
url_en: /en/
---

<!-- SEÇÃO 1: HERO INSTITUCIONAL -->
<section class="hub-hero" id="inicio" aria-labelledby="hero-title">
  <div class="hub-hero-bg" aria-hidden="true">
    <img src="{{ '/assets/img/portfolio/foto-encontro-abertura.jpg' | relative_url }}" alt="" class="hub-hero-img" loading="eager">
    <div class="hub-hero-overlay"></div>
  </div>

  <div class="hub-container">
    <div class="hub-hero-content">
      <div class="hub-hero-badge">
        <span class="hub-badge-dot" aria-hidden="true"></span>
        <span>RESIDÊNCIA INOVATECH · IFPI & PIAUÍ GOV TECH</span>
      </div>

      <h1 id="hero-title" class="hub-hero-title">
        Software público desenvolvido e <span class="text-gradient">implantado em produção</span>.
      </h1>

      <p class="hub-hero-sub">
        Um ecossistema de inovação, formação intensiva de talentos e engenharia de software aplicada.
        Conectamos o Instituto Federal do Piauí e instituições públicas para projetar,
        validar e transferir soluções tecnológicas que funcionam.
      </p>

      <div class="hub-hero-proof mono">
        <span>3 sistemas em produção no IFPI</span>
        <span class="proof-sep" aria-hidden="true">·</span>
        <span>208 entregas registradas no GitHub</span>
        <span class="proof-sep" aria-hidden="true">·</span>
        <span>Transferência formal em 11/09/2026</span>
      </div>

      <div class="hub-hero-ctas">
        <a href="#solucoes" class="hub-btn hub-btn-primary">
          <span>Conhecer Soluções em Produção</span>
          <span class="btn-arrow" aria-hidden="true">↓</span>
        </a>
        <a href="#fabrica" class="hub-btn hub-btn-outline">
          <span>Como Funciona a Fábrica</span>
        </a>
      </div>
    </div>
  </div>
</section>

<!-- SEÇÃO 2: INDICADORES DE RESULTADOS VERIFICADOS -->
<section class="hub-section hub-section-stats" id="indicadores" aria-labelledby="stats-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Resultados Auditáveis</p>
      <h2 id="stats-heading">Métricas consolidadas com evidência e transparência</h2>
      <p class="hub-section-lead">
        No INOVATECH, software entregue é software homologado e em produção. Cada indicador reflete trabalho efetivamente verificado nas esteiras de engenharia e nos setores atendidos.
      </p>
    </div>

    <div class="hub-stats-grid">
      {% for ind in site.data.indicadores %}
        <article class="hub-stat-card">
          <div class="hub-stat-number mono">{{ ind.numero }}</div>
          <h3 class="hub-stat-label">{{ ind.rotulo }}</h3>
          <p class="hub-stat-detail">{{ ind.detalhe }}</p>
          <footer class="hub-stat-stamp mono">
            <span class="stamp-dot">●</span> {{ ind.fonte }}
          </footer>
        </article>
      {% endfor %}
    </div>

    <div class="hub-stats-single-footer mono dim">
      Fonte consolidada: Relatório da Fase 1 e organização oficial no GitHub (inovatech-ifpi) · Verificado em 09/10/2026
    </div>
  </div>
</section>

<!-- SEÇÃO 3: FÁBRICA DE SOLUÇÕES (O PROCESSO DE ENGENHARIA) -->
<section class="hub-section hub-section-alt" id="fabrica" aria-labelledby="fabrica-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Método de Delivery</p>
      <h2 id="fabrica-heading">A Fábrica de Soluções: do problema real à transferência</h2>
      <p class="hub-section-lead">
        Cada solução segue oito etapas estruturadas, do problema trazido pelo setor público até a transferência formal, com arquitetura revisada, testes de aceitação e conformidade contínua com a LGPD.
      </p>
    </div>

    <div class="hub-process-timeline">
      {% for step in site.data.portal.factory_steps %}
        <div class="hub-process-step">
          <div class="hub-process-step-head">
            <span class="hub-step-num mono">{{ step.step }}</span>
            <span class="hub-step-badge mono">{{ step.tag }}</span>
          </div>
          <h3 class="hub-step-title">{{ step.title }}</h3>
          <p class="hub-step-desc">{{ step.desc }}</p>
          <div class="hub-step-date mono dim">Marco: {{ step.date }}</div>
        </div>
      {% endfor %}
    </div>

    <div class="hub-handover-box">
      <div class="hub-handover-icon mono">✓</div>
      <div class="hub-handover-body">
        <h3>Protocolo 7/7 de Transferência Formal</h3>
        <p>
          Um sistema só é considerado transferido quando cumpre os sete requisitos de sustentabilidade:
          <strong>1.</strong> Mantenedor técnico nomeado pelo setor demandante;
          <strong>2.</strong> Runbook de operação entregue;
          <strong>3.</strong> Procedimento de rollback testado;
          <strong>4.</strong> Homologação formal assinada pelo gestor;
          <strong>5.</strong> Repositório institucional auditado e sem dados sensíveis;
          <strong>6.</strong> Documentação de arquitetura e dados atualizada; e
          <strong>7.</strong> Termo formal de transferência assinado entre as partes.
        </p>
      </div>
      <div class="hub-handover-action">
        <a href="{{ '/metodologia/' | relative_url }}" class="hub-btn hub-btn-sm hub-btn-outline">
          Ver Metodologia Completa →
        </a>
      </div>
    </div>
  </div>
</section>

<!-- SEÇÃO 4: VITRINE DOS 4 PRODUTOS -->
<section class="hub-section" id="solucoes" aria-labelledby="solucoes-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Portfólio de Engenharia</p>
      <h2 id="solucoes-heading">Soluções desenvolvidas para desafios públicos reais</h2>
      <p class="hub-section-lead">
        Quatro frentes com instituições demandantes ativas. Três sistemas implantados no ambiente do IFPI em evolução quinzenal contínua e uma frente em operação de segurança pública com o Governo do Estado.
      </p>
    </div>

    <div class="hub-products-grid">
      {% for proj in site.data.portal.projects %}
        <article class="hub-product-card {{ proj.tone }}" id="produto-{{ proj.slug }}">
          <div class="hub-product-media">
            {% if proj.thumb %}
              <img src="{{ proj.thumb | relative_url }}" alt="Interface do sistema {{ proj.public_name }}" class="hub-product-img" loading="lazy">
            {% else %}
              <div class="hub-product-placeholder mono">
                <span>[CONTEÚDO OPERACIONAL CONFIDENCIAL]</span>
                <span class="dim">Parceria SSP-PI · Sigilo Legal</span>
              </div>
            {% endif %}
            <div class="hub-product-badge-bar">
              <span class="hub-chip mono">{{ proj.code }}</span>
              <span class="hub-chip status-chip mono">{{ proj.stage }}</span>
            </div>
          </div>

          <div class="hub-product-content">
            <div class="hub-product-meta mono dim">{{ proj.stakeholder }}</div>
            <h3 class="hub-product-title">{{ proj.public_name }}</h3>
            <p class="hub-product-subtitle"><strong>{{ proj.subtitle }}</strong></p>
            <p class="hub-product-desc">{{ proj.description }}</p>

            <div class="hub-product-footer">
              <span class="hub-team-pill mono">{{ proj.residents }} residentes dedicados</span>
              <a href="{{ '/portfolio/' | relative_url }}#{{ proj.slug }}" class="hub-card-link">
                Ver Estudo de Caso Completo →
              </a>
            </div>
          </div>
        </article>
      {% endfor %}
    </div>

    <div class="hub-section-cta-wrap">
      <a href="{{ '/portfolio/' | relative_url }}" class="hub-btn hub-btn-primary">
        <span>Acessar Showroom Tecnológico Completo</span>
        <span class="btn-arrow" aria-hidden="true">→</span>
      </a>
    </div>
  </div>
</section>

<!-- SEÇÃO 5: PESSOAS QUE CONSTRUEM SOLUÇÕES -->
<section class="hub-section hub-section-alt" id="equipes" aria-labelledby="equipes-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Talentos & Formação Aplicada</p>
      <h2 id="equipes-heading">Pessoas que constroem tecnologia pública</h2>
      <p class="hub-section-lead">
        Quinze residentes bolsistas organizados em squads ágeis com papéis rotativos de liderança técnica, orientados por corpo docente do IFPI e suporte institucional permanente da Piauí Gov Tech e ETIPI.
      </p>
    </div>

    <div class="hub-squads-grid">
      {% for squad in site.data.squads %}
        <article class="hub-squad-card{% if squad.is_restricted %} hub-squad-card--restricted{% endif %}">
          <div class="hub-squad-photo-wrap">
            {% if squad.photo %}
              <img src="{{ squad.photo | relative_url }}" alt="{{ squad.alt }}" class="hub-squad-img" loading="lazy">
            {% else %}
              <div class="hub-squad-photo-restricted mono">
                <span>[EQUIPE EM REGIME DE SIGILO]</span>
                <span class="dim">Segurança Pública Estadual</span>
              </div>
            {% endif %}
            <div class="hub-squad-overlay">
              <span class="hub-squad-badge mono">{{ squad.code }}</span>
            </div>
          </div>
          <div class="hub-squad-info">
            <h3 class="hub-squad-title">{{ squad.name }}</h3>
            <p class="hub-squad-focus"><strong>{{ squad.focus }}</strong></p>
            <p class="hub-squad-desc-text">{{ squad.description }}</p>
            <div class="hub-squad-roster-meta mono dim">
              <span>{{ squad.residents_count }} residentes bolsistas · 20 h/semana</span>
            </div>
          </div>
        </article>
      {% endfor %}
    </div>

    <!-- Coordenação Oficial -->
    <div class="hub-leadership-block">
      <div class="hub-leadership-head">
        <h3 class="hub-leadership-title">Coordenação e Corpo de Instrutores (Portaria 783/2026-GAB/REI/IFPI)</h3>
      </div>
      <div class="hub-leadership-grid">
        {% for leader in site.data.portal.leadership %}
          <div class="hub-leader-card">
            <strong>{{ leader.name }}</strong>
            <span class="leader-role mono">{{ leader.role }}</span>
            <span class="leader-inst dim">{{ leader.inst }}</span>
          </div>
        {% endfor %}
      </div>
    </div>
  </div>
</section>

<!-- SEÇÃO 6: IMPACTO E HISTÓRIAS DE TRANSFORMAÇÃO -->
<section class="hub-section" id="impacto" aria-labelledby="impacto-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Valor Gerado</p>
      <h2 id="impacto-heading">Impacto mensurável na gestão pública</h2>
      <p class="hub-section-lead">
        A diferença entre teoria acadêmica e engenharia de software aplicada está no resultado operacional direto para os setores atendidos.
      </p>
    </div>

    <div class="hub-case-spotlight">
      <div class="hub-case-header">
        <span class="hub-case-tag mono">ESTUDO DE CASO EM DESTAQUE · SGAE</span>
        <h3>Modernização da Assistência Estudantil: da fragilidade operacional à conformidade contínua</h3>
      </div>

      <div class="hub-compare-grid">
        <div class="hub-compare-col before">
          <div class="compare-title mono">
            <span class="icon">✕</span> ANTES DO INOVATECH
          </div>
          <ul>
            <li><strong>7 modalidades de auxílios</strong> administradas em planilhas compartilhadas entre oito servidores.</li>
            <li><strong>Conferência manual de acúmulos</strong> com risco operacional de descumprimento das normas da POLAE.</li>
            <li><strong>Digitação manual de dados bancários</strong> sujeita a erros, estornos e atrasos em pagamentos.</li>
            <li><strong>Inexistência de trilha de auditoria</strong> histórica e rastreabilidade para órgãos de controle.</li>
          </ul>
        </div>

        <div class="hub-compare-col after">
          <div class="compare-title mono">
            <span class="icon">✓</span> COM O SGAE EM PRODUÇÃO
          </div>
          <ul>
            <li><strong>Motor de regras de negócio</strong> que valida e alerta acúmulos vedados pela POLAE no momento da concessão.</li>
            <li><strong>R$ 1,1 milhão/ano gerenciados</strong> para cerca de 580 estudantes com transparência e prestação de contas.</li>
            <li><strong>Folhas de pagamento geradas a partir de vínculos auditados</strong>, com validação de dados bancários sob a LGPD.</li>
            <li><strong>Histórico completo de aprovações</strong>, suspensões e cancelamentos disponível para auditoria.</li>
          </ul>
        </div>
      </div>

      <div class="hub-case-footer">
        <p class="mono dim">
          Demandante: Diretoria de Extensão / Assistência Estudantil · Implantado no IFPI Central e com arquitetura multi-campus pronta para expansão na rede federal.
        </p>
      </div>
    </div>
  </div>
</section>

<!-- SEÇÃO 7: ECOSSISTEMA E PARCEIROS -->
<section class="hub-section hub-section-alt" id="parceiros" aria-labelledby="parceiros-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Articulação Institucional</p>
      <h2 id="parceiros-heading">Ecossistema de cooperação e transformação</h2>
      <p class="hub-section-lead">
        O INOVATECH une a capacidade científica e formativa do Instituto Federal às prioridades estratégicas de tecnologia do Estado do Piauí.
      </p>
    </div>

    <div class="hub-partners-grid">
      {% for partner in site.data.portal.partners %}
        <article class="hub-partner-card">
          <div class="hub-partner-category mono">{{ partner.category }}</div>
          <h3 class="hub-partner-name">{{ partner.name }}</h3>
          <p class="hub-partner-detail">{{ partner.detail }}</p>
          {% if partner.logo %}
            <div class="hub-partner-logo-box">
              <img src="{{ partner.logo | relative_url }}" alt="Logo institucional {{ partner.name }}" class="hub-partner-logo" loading="lazy">
            </div>
          {% endif %}
        </article>
      {% endfor %}
    </div>
  </div>
</section>

<!-- SEÇÃO 8: NOTÍCIAS, EVENTOS E MARCOS -->
<section class="hub-section" id="noticias" aria-labelledby="noticias-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="hub-kicker">Agenda & Comunicação</p>
      <h2 id="noticias-heading">Marcos recentes e acontecimentos</h2>
      <p class="hub-section-lead">
        Registros públicos da trajetória do programa, entregas institucionais e presença em fóruns de inovação.
      </p>
    </div>

    <div class="hub-news-grid">
      {% for item in site.data.portal.news %}
        <article class="hub-news-card">
          <div class="hub-news-meta mono">
            <span class="news-date">{{ item.date }}</span>
            <span class="news-tag">{{ item.tag }}</span>
          </div>
          <h3 class="hub-news-title">{{ item.title }}</h3>
          <p class="hub-news-summary">{{ item.summary }}</p>
          <a href="{{ item.link | relative_url }}" class="hub-news-link mono">
            Acessar registro oficial →
          </a>
        </article>
      {% endfor %}
    </div>
  </div>
</section>

<!-- SEÇÃO 9: COLABORE COM O INOVATECH -->
<section class="hub-section hub-section-dark" id="colabore" aria-labelledby="colabore-heading">
  <div class="hub-container">
    <div class="hub-section-head text-white">
      <p class="hub-kicker text-menta">Canais de Cooperação</p>
      <h2 id="colabore-heading">Como colaborar com o INOVATECH</h2>
      <p class="hub-section-lead">
        Construímos pontes para solucionar problemas de tecnologia do setor público com rapidez, governança e transparência. Escolha a melhor modalidade de conexão:
      </p>
    </div>

    <div class="hub-colabore-grid">
      <div class="hub-colabore-card">
        <div class="hub-colabore-num mono">01</div>
        <h3>Propor um Desafio Tecnológico</h3>
        <p>
          Sua instituição possui um gargalo operacional, sistema legado ou processo manual sem rastreabilidade? Submeta uma demanda institucional com gestores dedicados para avaliação técnica.
        </p>
        <div class="hub-colabore-action">
          <a href="mailto:eric@ifpi.edu.br?subject=INOVATECH%20-%20Proposta%20de%20Demanda%20Tecnologica" class="hub-btn hub-btn-sm hub-btn-primary">
            Submeter Demanda por E-mail
          </a>
        </div>
      </div>

      <div class="hub-colabore-card">
        <div class="hub-colabore-num mono">02</div>
        <h3>Apoiar Operação e Escala em Rede</h3>
        <p>
          Parcerias para operação assistida, infraestrutura em nuvem, certificação de segurança e replicação dos sistemas (SGAE, Flix, Conecta) para outros campi e órgãos estaduais.
        </p>
        <div class="hub-colabore-action">
          <a href="mailto:aislan@ifpi.edu.br?subject=INOVATECH%20-%20Parceria%20Operacao%20e%20Escala" class="hub-btn hub-btn-sm hub-btn-outline text-white">
            Conversar sobre Sustentação
          </a>
        </div>
      </div>

      <div class="hub-colabore-card">
        <div class="hub-colabore-num mono">03</div>
        <h3>Financiar Nova Turma ou Vagas</h3>
        <p>
          Aporte de bolsas de fomento para abertura de novas vagas de residentes, acelerando talentos jovens em computação e resolvendo desafios prioritários da sua pasta ou setor.
        </p>
        <div class="hub-colabore-action">
          <a href="mailto:adm@piauigovtech.org?subject=INOVATECH%20-%20Financiamento%20de%20Turma" class="hub-btn hub-btn-sm hub-btn-outline text-white">
            Articular com Piauí Gov Tech
          </a>
        </div>
      </div>
    </div>

    <div class="hub-contact-direct-box">
      <div class="hub-contact-direct-inner">
        <div>
          <h4>Canais Institucionais Oficiais</h4>
          <p class="mono dim">Comunicação direta com a coordenação e equipe de tecnologia:</p>
        </div>
        <div class="hub-contacts-list mono">
          <div><strong>Coordenação-Geral:</strong> Prof. Franciéric Alves · <a href="mailto:eric@ifpi.edu.br">eric@ifpi.edu.br</a></div>
          <div><strong>Instrutoria Técnica:</strong> Prof. Aislan Sousa · <a href="mailto:aislan@ifpi.edu.br">aislan@ifpi.edu.br</a></div>
          <div><strong>Governança Estadual:</strong> Piauí Gov Tech / ETIPI · <a href="mailto:adm@piauigovtech.org">adm@piauigovtech.org</a></div>
        </div>
      </div>
    </div>
  </div>
</section>
