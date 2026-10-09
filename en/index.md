---
layout: hub
title: "Public GovTech Innovation Hub & Software Factory"
permalink: /en/
description: "Sovereign public software engineering residency by IFPI and Piauí Gov Tech. 15 engineering fellows, 4 stakeholder tracks, production-deployed systems."
lang: en
url_pt: /
---

<!-- SECTION 1: INTERNATIONAL HERO -->
<section class="hub-hero" id="overview" aria-labelledby="en-hero-title">
  <div class="hub-hero-bg" aria-hidden="true">
    <img src="{{ '/assets/img/portfolio/foto-encontro-abertura.jpg' | relative_url }}" alt="" class="hub-hero-img" loading="eager">
    <div class="hub-hero-overlay"></div>
  </div>

  <div class="hub-container">
    <div class="hub-hero-content">
      <div class="hub-hero-badge mono">
        <span class="hub-badge-dot" aria-hidden="true"></span>
        <span>INOVATECH TECH RESIDENCY · IFPI & PIAUÍ GOV TECH</span>
      </div>

      <h1 id="en-hero-title" class="hub-hero-title">
        Engineering applied public software to solve <span class="text-gradient">real institutional challenges</span>.
      </h1>

      <p class="hub-hero-sub">
        An advanced public software accelerator connecting federal academic talent, state government agencies, and real operational bottlenecks to design, validate, and deploy production-grade software solutions.
      </p>

      <div class="hub-hero-ctas">
        <a href="{{ '/en/portfolio/' | relative_url }}" class="hub-btn hub-btn-primary">
          <span>Explore Showcase Portfolio</span>
          <span class="btn-arrow" aria-hidden="true">→</span>
        </a>
        <a href="#model" class="hub-btn hub-btn-outline">
          <span>How the Software Factory Works</span>
        </a>
        <a href="#partnerships" class="hub-btn hub-btn-ghost mono">
          <span>Web Summit & Global Partnerships</span>
        </a>
      </div>

      <!-- Progress Ribbon -->
      <div class="hub-hero-progress-banner">
        <div class="hub-progress-header mono">
          <span><strong>Phase 2</strong> · Continuous Evolution in Fortnightly Sprints</span>
          <span class="dim">Week {{ site.data.portal.cycle.current_week }} of {{ site.data.portal.cycle.total_weeks }}</span>
        </div>
        <div class="hub-progress-bar" aria-label="Cycle progress bar">
          {% for number in (1..site.data.portal.cycle.total_weeks) %}
            <span class="hub-progress-pip{% if number < site.data.portal.cycle.current_week %} done{% elsif number == site.data.portal.cycle.current_week %} current{% endif %}"></span>
          {% endfor %}
        </div>
      </div>
    </div>
  </div>
</section>

<!-- SECTION 2: VERIFIED RESULTS & METRICS -->
<section class="hub-section hub-section-stats" id="impact" aria-labelledby="en-stats-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="kicker mono">// auditable performance</p>
      <h2 id="en-stats-heading">Consolidated Metrics Grounded in Evidence</h2>
      <p class="hub-section-lead">
        At INOVATECH, software delivery means audited code in institutional repositories, formal user homologation, and operational handover.
      </p>
    </div>

    <div class="hub-stats-grid">
      <article class="hub-stat-card">
        <div class="hub-stat-number mono">15</div>
        <h3 class="hub-stat-label">Engineering Fellows</h3>
        <p class="hub-stat-detail">Dedicated 20 hours/week in multidisciplinary software squads with senior academic faculty guidance.</p>
        <footer class="hub-stat-stamp mono">Federal Ordinance 783/2026 · Selection Registry</footer>
      </article>

      <article class="hub-stat-card">
        <div class="hub-stat-number mono">4</div>
        <h3 class="hub-stat-label">Real Stakeholder Tracks</h3>
        <p class="hub-stat-detail">SGAE (FinTech/Welfare), IFPI Flix (EdTech/Streaming), Conecta CATCE (IoT/Access), and SPIA Maestro (Public Safety).</p>
        <footer class="hub-stat-stamp mono">Institutional Agreements · Verified Stakeholders</footer>
      </article>

      <article class="hub-stat-card">
        <div class="hub-stat-number mono">3</div>
        <h3 class="hub-stat-label">Systems Live in Production</h3>
        <p class="hub-stat-detail">Deployed on IFPI institutional infrastructure and evolving continuously in bi-weekly sprints.</p>
        <footer class="hub-stat-stamp mono">Homologation Aug 14 & Public Showcase Sep 11</footer>
      </article>

      <article class="hub-stat-card">
        <div class="hub-stat-number mono">208</div>
        <h3 class="hub-stat-label">Completed Work Items</h3>
        <p class="hub-stat-detail">148 pull requests code-reviewed, tested, and merged into protected institutional branches.</p>
        <footer class="hub-stat-stamp mono">GitHub Organization inovatech-ifpi</footer>
      </article>

      <article class="hub-stat-card">
        <div class="hub-stat-number mono">5 of 5</div>
        <h3 class="hub-stat-label">Formal Milestone Gates</h3>
        <p class="hub-stat-detail">100% on-schedule completion across Inception, Technical Gate, Beta, Delivery, and Transfer.</p>
        <footer class="hub-stat-stamp mono">Canonical Milestones Baseline · ADR-0007</footer>
      </article>

      <article class="hub-stat-card">
        <div class="hub-stat-number mono">1</div>
        <h3 class="hub-stat-label">State Public Safety Track</h3>
        <p class="hub-stat-detail">Active development embedded in the State Department of Public Safety (SSP-PI) monitoring network.</p>
        <footer class="hub-stat-stamp mono">SSP-PI & Piauí Gov Tech Agreement</footer>
      </article>
    </div>
  </div>
</section>

<!-- SECTION 3: THE SOFTWARE FACTORY MODEL -->
<section class="hub-section hub-section-alt" id="model" aria-labelledby="en-model-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="kicker mono">// engineering rigor</p>
      <h2 id="en-model-heading">The Software Factory: From Public Bottleneck to Handover</h2>
      <p class="hub-section-lead">
        Fellows do not build toy prototypes or disposable academic exercises. Every track follows a rigorous 8-stage engineering delivery lifecycle.
      </p>
    </div>

    <div class="hub-process-timeline">
      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">01</span><span class="hub-step-badge mono">Intake</span></div>
        <h3 class="hub-step-title">Verified Public Problem</h3>
        <p class="hub-step-desc">Real bottleneck submitted by a public department with existing regulations and dedicated civil service focal points.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">02</span><span class="hub-step-badge mono">Discovery</span></div>
        <h3 class="hub-step-title">Inception & User Journey</h3>
        <p class="hub-step-desc">Field interviews, user personas, end-to-end journey mapping, and auditable backlog formulation.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">03</span><span class="hub-step-badge mono">Architecture</span></div>
        <h3 class="hub-step-title">Technical Gate & Security</h3>
        <p class="hub-step-desc">Software architecture, database schemas, automated testing suites, CI/CD pipelines, and LGPD privacy compliance.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">04</span><span class="hub-step-badge mono">Sprint Delivery</span></div>
        <h3 class="hub-step-title">Functional Beta Integration</h3>
        <p class="hub-step-desc">Rapid iterative squad sprints with weekly demonstrable reviews and continuous stakeholder feedback.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">05</span><span class="hub-step-badge mono">Final Release</span></div>
        <h3 class="hub-step-title">Validated Software Package</h3>
        <p class="hub-step-desc">End-to-end system testing, complete operational documentation, runbooks, and public Demo Day presentation.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">06</span><span class="hub-step-badge mono">Deployment</span></div>
        <h3 class="hub-step-title">Production Homologation</h3>
        <p class="hub-step-desc">Deployment onto institutional cloud servers and formal sign-off by department civil service leadership.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">07</span><span class="hub-step-badge mono">Transfer Gate</span></div>
        <h3 class="hub-step-title">Formal Handover Protocol</h3>
        <p class="hub-step-desc">Named permanent maintainer, operational runbook delivered, rollback verified, and transfer agreement signed.</p>
      </div>

      <div class="hub-process-step">
        <div class="hub-process-step-head"><span class="hub-step-num mono">08</span><span class="hub-step-badge mono">Evolution</span></div>
        <h3 class="hub-step-title">Continuous Sprints</h3>
        <p class="hub-step-desc">Bi-weekly evolution sprints prioritizing backlog items dictated directly by end users in active production.</p>
      </div>
    </div>

    <div class="hub-handover-box">
      <div class="hub-handover-icon mono">✓</div>
      <div class="hub-handover-body">
        <h3>The 4 Pillars of Sustainable GovTech Delivery</h3>
        <p>
          A product is only considered delivered when: <strong>(1)</strong> a permanent civil service maintainer is appointed; <strong>(2)</strong> complete operational runbooks are transferred; <strong>(3)</strong> automated rollback routines are tested; and <strong>(4)</strong> institutional handover protocols are ratified.
        </p>
      </div>
    </div>
  </div>
</section>

<!-- SECTION 4: THE 4 PRODUCTION PRODUCTS -->
<section class="hub-section" id="products" aria-labelledby="en-products-heading">
  <div class="hub-container">
    <div class="hub-section-head">
      <p class="kicker mono">// production showcase</p>
      <h2 id="en-products-heading">Solutions Engineered for Public Sector Impact</h2>
      <p class="hub-section-lead">
        Four tracks with authentic institutional stakeholders. Three systems running in active production at IFPI and one mission-critical state public safety track.
      </p>
    </div>

    <div class="hub-products-grid">
      <!-- SGAE -->
      <article class="hub-product-card">
        <div class="hub-product-media">
          <img src="{{ '/assets/img/portfolio/tela-sgae-pagamentos.jpg' | relative_url }}" alt="SGAE Payments Module" class="hub-product-img" loading="lazy">
          <div class="hub-product-badge-bar">
            <span class="hub-chip mono">TRACK 01</span>
            <span class="hub-chip status-chip mono">Live in Production · IFPI</span>
          </div>
        </div>
        <div class="hub-product-content">
          <div class="hub-product-meta mono dim">Directorate of Student Welfare · IFPI</div>
          <h3 class="hub-product-title">SGAE — Student Welfare & Compliance</h3>
          <p class="hub-product-subtitle"><strong>Automated Benefit Disbursement & Regulatory State Machine</strong></p>
          <p class="hub-product-desc">
            Manages 7 categories of financial aid under the POLAE policy, serving ~580 student beneficiaries with an annual budget of R$ 1.1 million. Replaced error-prone spreadsheets with automated conflict detection, LGPD-compliant banking data handling, and automated payroll compiling.
          </p>
          <div class="hub-product-footer">
            <span class="hub-team-pill mono">4 Fellows · Multi-Campus Ready</span>
            <a href="{{ '/en/portfolio/#sgae' | relative_url }}" class="hub-card-link">View Deep-Dive Case Study →</a>
          </div>
        </div>
      </article>

      <!-- FLIX -->
      <article class="hub-product-card">
        <div class="hub-product-media">
          <img src="{{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }}" alt="IFPI Flix Streaming Catalog" class="hub-product-img" loading="lazy">
          <div class="hub-product-badge-bar">
            <span class="hub-chip mono">TRACK 02</span>
            <span class="hub-chip status-chip mono">Live in Production · IFPI</span>
          </div>
        </div>
        <div class="hub-product-content">
          <div class="hub-product-meta mono dim">Office of the University President · IFPI</div>
          <h3 class="hub-product-title">IFPI Flix — Institutional EduStream</h3>
          <p class="hub-product-subtitle"><strong>Decentralized Academic Video Repository & Discovery Portal</strong></p>
          <p class="hub-product-desc">
            A consumer-grade streaming catalog organizing educational, scientific, and cultural media assets across the federal network. Features intuitive thematic rows for public visitors and a zero-code administrative CMS for faculty.
          </p>
          <div class="hub-product-footer">
            <span class="hub-team-pill mono">3 Fellows · Multi-Campus Federated</span>
            <a href="{{ '/en/portfolio/#flix' | relative_url }}" class="hub-card-link">View Deep-Dive Case Study →</a>
          </div>
        </div>
      </article>

      <!-- CONECTA -->
      <article class="hub-product-card">
        <div class="hub-product-media">
          <img src="{{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }}" alt="Conecta CATCE Mobile Application" class="hub-product-img" loading="lazy">
          <div class="hub-product-badge-bar">
            <span class="hub-chip mono">TRACK 03</span>
            <span class="hub-chip status-chip mono">Deployed · DTI Maintainer</span>
          </div>
        </div>
        <div class="hub-product-content">
          <div class="hub-product-meta mono dim">General Campus Directorate · IFPI Central</div>
          <h3 class="hub-product-title">Conecta CATCE & Catraka</h3>
          <p class="hub-product-subtitle"><strong>Smart Campus Access Control & Guardian Engagement App</strong></p>
          <p class="hub-product-desc">
            Dual-architecture solution unifying IoT turnstile access management with a real-time mobile app for parents and guardians. Implements the Brazilian Federal GOV.BR Design System.
          </p>
          <div class="hub-product-footer">
            <span class="hub-team-pill mono">4 Fellows · GOV.BR Design System</span>
            <a href="{{ '/en/portfolio/#conecta' | relative_url }}" class="hub-card-link">View Deep-Dive Case Study →</a>
          </div>
        </div>
      </article>

      <!-- SPIA MAESTRO -->
      <article class="hub-product-card external">
        <div class="hub-product-media">
          <div class="hub-product-placeholder mono">
            <span>[OPERATIONAL ARCHITECTURE RESTRICTED]</span>
            <span class="dim">SSP-PI State Public Safety Infrastructure</span>
          </div>
          <div class="hub-product-badge-bar">
            <span class="hub-chip mono">TRACK 04</span>
            <span class="hub-chip status-chip mono">Live State Police Infrastructure</span>
          </div>
        </div>
        <div class="hub-product-content">
          <div class="hub-product-meta mono dim">State Department of Public Safety (SSP-PI)</div>
          <h3 class="hub-product-title">SPIA Maestro — Video Intelligence</h3>
          <p class="hub-product-subtitle"><strong>Automated Vehicle Target Dispatch & Law Enforcement Engine</strong></p>
          <p class="hub-product-desc">
            Embedded backend services automating vehicle target verification, real-time camera broadcast, and target revocation. Four fellows develop under zero-tolerance data accuracy, strict authorization, and state public safety confidentiality.
          </p>
          <div class="hub-product-footer">
            <span class="hub-team-pill mono">4 Fellows · Classified Operational Systems</span>
            <a href="{{ '/en/portfolio/#spia' | relative_url }}" class="hub-card-link">View Track Overview →</a>
          </div>
        </div>
      </article>
    </div>

    <div class="hub-section-cta-wrap">
      <a href="{{ '/en/portfolio/' | relative_url }}" class="hub-btn hub-btn-primary">
        <span>Open Complete Web Summit Showcase Portfolio →</span>
      </a>
    </div>
  </div>
</section>

<!-- SECTION 5: PARTNERSHIPS & WEB SUMMIT ENGAGEMENT -->
<section class="hub-section hub-section-dark" id="partnerships" aria-labelledby="en-partnerships-heading">
  <div class="hub-container">
    <div class="hub-section-head text-white">
      <p class="kicker mono">// global collaboration</p>
      <h2 id="en-partnerships-heading">Web Summit Lisbon 2026 & Partnership Models</h2>
      <p class="hub-section-lead">
        We invite global GovTech laboratories, multilateral organizations, and public sector leaders to engage across three proven collaboration models:
      </p>
    </div>

    <div class="hub-colabore-grid">
      <div class="hub-colabore-card">
        <div class="hub-colabore-num mono">01</div>
        <h3>Bring a Public Sector Challenge</h3>
        <p>
          A public agency or government department brings a verified bottleneck with dedicated civil service domain owners. INOVATECH mobilizes an elite fellow squad to deliver production software through formal handover.
        </p>
        <div class="hub-colabore-action">
          <a href="mailto:eric@ifpi.edu.br?subject=INOVATECH%20-%20Institutional%20Challenge%20Inquiry" class="hub-btn hub-btn-sm hub-btn-primary">
            Submit Challenge via Email
          </a>
        </div>
      </div>

      <div class="hub-colabore-card">
        <div class="hub-colabore-num mono">02</div>
        <h3>Scale & Assisted Operations Partner</h3>
        <p>
          Provide infrastructure, cloud credits, or operational funding to scale our open, sovereign software (SGAE, Flix, Conecta) across federal networks and state institutions with measurable impact.
        </p>
        <div class="hub-colabore-action">
          <a href="mailto:aislan@ifpi.edu.br?subject=INOVATECH%20-%20Scaling%20Partnership" class="hub-btn hub-btn-sm hub-btn-outline text-white">
            Discuss Scaling & Architecture
          </a>
        </div>
      </div>

      <div class="hub-colabore-card">
        <div class="hub-colabore-num mono">03</div>
        <h3>Sponsor a Fellowship Cohort</h3>
        <p>
          Fund living stipends for a new cohort of 20 to 50 young engineering fellows. Replicate our vetted model: intensive talent diagnosis, product-driven execution, and auditable public milestone deliveries.
        </p>
        <div class="hub-colabore-action">
          <a href="mailto:adm@piauigovtech.org?subject=INOVATECH%20-%20Cohort%20Sponsorship" class="hub-btn hub-btn-sm hub-btn-outline text-white">
            Connect with Piauí Gov Tech
          </a>
        </div>
      </div>
    </div>

    <div class="hub-contact-direct-box">
      <div class="hub-contact-direct-inner">
        <div>
          <h4>Official Institutional Contacts</h4>
          <p class="mono dim">Federal Institute of Piauí & State Digital Transformation Agency:</p>
        </div>
        <div class="hub-contacts-list mono">
          <div><strong>General Residency Coordination:</strong> Prof. Franciéric Alves de Araújo · <a href="mailto:eric@ifpi.edu.br">eric@ifpi.edu.br</a></div>
          <div><strong>Technical & Engineering Direction:</strong> Prof. Aislan Rafael Rodrigues de Sousa · <a href="mailto:aislan@ifpi.edu.br">aislan@ifpi.edu.br</a></div>
          <div><strong>State GovTech Agency:</strong> Piauí Gov Tech / ETIPI · <a href="mailto:adm@piauigovtech.org">adm@piauigovtech.org</a></div>
        </div>
      </div>
    </div>
  </div>
</section>
