---
layout: hub
title: "International Showcase & Tech Portfolio"
permalink: /en/portfolio/
description: "Three systems deployed at IFPI and the state public safety track SPIA Maestro, combining applied learning and institutional cooperation."
lang: en
url_pt: /portfolio/
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
      <span>INTERNATIONAL EDITION · IFPI & PIAUÍ GOV TECH</span>
    </div>
    <h1 class="hub-page-title">Sovereign GovTech Solutions Engineered for Real Impact</h1>
    <p class="hub-page-lead">
      At the INOVATECH Tech Residency, fellows build software products. Every solution addresses an authentic public bottleneck, operates under real regulations, and combines institutional deployment, continuous development and documentary handover.
    </p>

    {% include portfolio-ribbon.html %}

  </div>
</div>

<div class="hub-container hub-container--showroom hub-showroom-body">
  <nav class="hub-showroom-nav mono" aria-label="Quick track navigation">
    <span>JUMP TO:</span>
    <a href="#sgae">01. SGAE (FinTech)</a>
    <a href="#flix">02. Projeto Flix (EdTech)</a>
    <a href="#conecta">03. Conecta CATCE (IoT)</a>
    <a href="#spia">04. SPIA Maestro (Public Safety)</a>
    <a href="#engagement">05. International Collaboration</a>
  </nav>

  <!-- TRACK 01: SGAE -->
  <article class="hub-case-card" id="sgae">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">TRACK 01 · GOVTECH & FINTECH</span>
        <span class="badge-status">LIVE IN PRODUCTION · IFPI CENTRAL</span>
      </div>
      <h2>SGAE — Student Welfare & Benefit Compliance Engine</h2>
      <p class="hub-case-demandante mono">
        <strong>Institutional Stakeholder:</strong> Directorate of Student Welfare · Federal Institute of Piauí (IFPI)
      </p>
    <p class="dim">{{ sgae.handover.en }} · {{ facts.checked_at }}</p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ facts.budget_en }}</span>
        <span class="hub-metric-lbl">Welfare Budget</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">~{{ facts.students }}</span>
        <span class="hub-metric-lbl">Active Beneficiaries</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ facts.aid_types }} Grants</span>
        <span class="hub-metric-lbl">POLAE Categories</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">History</span>
        <span class="hub-metric-lbl">Audited Compliance</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>The Public Sector Bottleneck</h3>
          <p>
            The campus student welfare department administers <strong>{{ facts.aid_types }} categories of financial aid</strong> under the POLAE regulatory policy (Resolution 35/2021). The program distributes <strong>{{ facts.budget_en | remove: "/year" }} annually</strong> across approximately <strong>{{ facts.students }} student beneficiaries</strong>.
          </p>
          <p>
            Previously, administration was conducted via unversioned, shared spreadsheets across staff members. This created operational fragility: zero auditability, cumbersome manual cross-checks to detect prohibited benefit accumulation, and payment rejections caused by manual banking data typos.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>The Engineered Solution</h3>
          <p>
            SGAE transforms student welfare into a traceable, automated state machine: <code>Student · Benefit · Month</code>.
          </p>
          <ul>
            <li><strong>Embedded Regulatory Engine:</strong> POLAE business rules are embedded natively, flagging prohibited accumulation conflicts in real time.</li>
            <li><strong>Automated Payroll Disbursement:</strong> monthly payroll disbursement manifests are compiled automatically from validated records, capturing approval, suspension, and rejection history.</li>
            <li><strong>LGPD Data Protection:</strong> banking and personal data are strictly protected under Brazil's General Data Protection Law (LGPD), with role-based access control and complete audit logging.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Scalability Beyond Campus</h3>
          <p>
            POLAE is the student welfare policy across IFPI. Replication in other IFPI campuses requires assessment of local needs, institutional governance, infrastructure and potential integrations.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> POLAE Resolution 35/2021</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Auditable State Machine</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Automated Anti-Conflict Engine</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> LGPD Data Protection</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Multi-Campus Federation</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Technical Specifications & Architecture</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Stakeholder</span>
              <span class="hub-spec-value">Student Welfare Directorate · IFPI</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Status</span>
              <span class="hub-spec-value">Live in Production · IFPI Central</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Core Stack</span>
              <span class="hub-spec-value">{{ sgae.stack }}</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Governance</span>
              <span class="hub-spec-value">Institutional Decree 783/2026-GAB</span>
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
              <span>sgae.ifpi.edu.br/payroll-compliance</span>
            </div>
            <div class="hub-browser-actions" aria-hidden="true">
              <span>⟳</span>
            </div>
          </div>
          <div class="hub-browser-screen">
            <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/portfolio/tela-sgae-pagamentos.jpg' | relative_url }}" data-lightbox-caption="SGAE payroll module with POLAE rule checks. Demonstration screenshot with SEED identifiers." aria-label="Expand SGAE screenshot">
              <img width="1671" height="853" src="{{ '/assets/img/portfolio/tela-sgae-pagamentos.jpg' | relative_url }}" alt="SGAE Payments Module" class="hub-case-img" loading="lazy">
              <span class="hub-lightbox-zoom-hint mono">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                <span>Expand</span>
              </span>
            </button>
          </div>
        </div>
        <figcaption class="mono dim" style="padding: 0 4px; font-size: 11.5px; line-height: 1.45;">
          SGAE payroll module with POLAE rule checks. Demonstration screenshot with SEED identifiers.
        </figcaption>
        <div class="hub-case-card-stats mono">
          <div><span>Budget:</span> {{ facts.budget_en }}</div>
          <div><span>Beneficiaries:</span> ~{{ facts.students }} students</div>
          <div><span>Grants:</span> {{ facts.aid_types }} POLAE categories</div>
          <div><span>Fellow Squad:</span> 4 engineering fellows</div>
        </div>
      </div>
    </div>

    <!-- Contextual Action Bar -->
    <div class="hub-case-actions">
      <a href="mailto:{{ coordination.email }},{{ technical.email }}?subject=[SGAE]%20Multi-Campus%20Rollout%20Inquiry" class="hub-case-action-btn primary mono">
        <span>Request Multi-Campus Rollout →</span>
      </a>
      <a href="#engagement" class="hub-case-action-btn secondary mono">
        <span>POLAE Regulatory Specs & Governance</span>
      </a>
    </div>
  </article>

  <!-- TRACK 02: FLIX -->
  <article class="hub-case-card hub-case-card--streaming" id="flix">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">TRACK 02 · EDTECH & MEDIA</span>
        <span class="badge-status">LIVE IN PRODUCTION · SCOPE VALIDATED</span>
      </div>
      <h2>Projeto Flix — Institutional Educational Streaming Platform</h2>
      <p class="hub-case-demandante mono">
        <strong>Institutional Stakeholder:</strong> Office of the University President (Reitoria), IFPI
      </p>
    <p class="dim">{{ flix.handover.en }} · {{ facts.checked_at }}</p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Multi-Campus</span>
        <span class="hub-metric-lbl">Federal Network Scope</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Self-Service CMS</span>
        <span class="hub-metric-lbl">Direct Faculty Curation</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Low-Bandwidth</span>
        <span class="hub-metric-lbl">Optimized for Mobile</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ flix.residents }} Fellows</span>
        <span class="hub-metric-lbl">Specialized Squad</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>The Public Sector Bottleneck</h3>
          <p>
            Public vocational and higher-education institutions generate extraordinary educational, scientific, and cultural media assets. However, this content remains scattered across disparate social media accounts, internal file servers, and administrative portals.
          </p>
          <p>
            Prospective students, rural communities, and the broader public had no centralized, intuitive entry point to discover available academic programs and institutional research.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>The Engineered Solution</h3>
          <p>
            A consumer-grade streaming repository:
          </p>
          <ul>
            <li><strong>Fluid Discovery Catalog:</strong> users navigate across campuses, academic departments, and research projects with featured trailers, thematic rows, and unified search.</li>
            <li><strong>Content Management:</strong> enables department managers to curate playlists, tag video assets, and configure public visibility with autonomy in content registration.</li>
            <li><strong>Low-Bandwidth Optimization:</strong> responsive streaming performance tailored for rural and low-connectivity mobile networks.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Scalability Beyond Campus</h3>
          <p>
            The catalog was designed for IFPI’s network. Expansion requires editorial governance, infrastructure and alignment with existing platforms.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> On-Demand Educational Streaming</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Content Management for Staff</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Curated Series & Micro-Courses</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Low-Bandwidth Encoding</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Federated Repository</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Technical Specifications & Architecture</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Stakeholder</span>
              <span class="hub-spec-value">President's Office & Media · IFPI</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Status</span>
              <span class="hub-spec-value">Live in Production · Scope Validated</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Core Stack</span>
              <span class="hub-spec-value">{{ flix.stack }}</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Audience</span>
              <span class="hub-spec-value">Academic Community & Society</span>
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
              <span>flix.ifpi.edu.br/series/tech-education</span>
            </div>
            <div class="hub-browser-actions" aria-hidden="true">
              <span>⟳</span>
            </div>
          </div>
          <div class="hub-browser-screen">
            <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }}" data-lightbox-caption="Projeto Flix public homepage featuring thematic educational rows and campus filters." aria-label="Expand Projeto Flix screenshot">
              <img width="1804" height="693" src="{{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }}" alt="Projeto Flix Streaming Catalog" class="hub-case-img" loading="lazy">
              <span class="hub-lightbox-zoom-hint mono">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                <span>Expand</span>
              </span>
            </button>
          </div>
        </div>
        <figcaption class="mono dim" style="padding: 0 4px; font-size: 11.5px; line-height: 1.45;">
          Projeto Flix public homepage featuring thematic educational rows and campus filters.
        </figcaption>
        <div class="hub-case-card-stats mono">
          <div><span>Audience:</span> Public & Academic</div>
          <div><span>Scope:</span> Federal Network-wide</div>
          <div><span>Format:</span> On-demand streaming</div>
          <div><span>Fellow Squad:</span> 3 engineering fellows</div>
        </div>
      </div>
    </div>

    <!-- Contextual Action Bar -->
    <div class="hub-case-actions">
      <a href="mailto:{{ coordination.email }},{{ technical.email }}?subject=[IFPI%20Flix]%20Catalog%20Demo%20Inquiry" class="hub-case-action-btn primary mono">
        <span>Request a Platform Demo →</span>
      </a>
      <a href="#engagement" class="hub-case-action-btn secondary mono">
        <span>Multi-Discuss Expansion</span>
      </a>
    </div>
  </article>

  <!-- TRACK 03: CONECTA CATCE -->
  <article class="hub-case-card" id="conecta">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">TRACK 03 · IOT & SMART CAMPUS</span>
        <span class="badge-status">DEPLOYED · DTI MAINTAINER</span>
      </div>
      <h2>Conecta CATCE (Catraka) — Smart Campus Access Control</h2>
      <p class="hub-case-demandante mono">
        <strong>Institutional Stakeholder:</strong> General Campus Directorate · IFPI Central Campus
      </p>
    <p class="dim">{{ conecta.handover.en }} · {{ facts.checked_at }}</p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Access</span>
        <span class="hub-metric-lbl">Access Management</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Integration</span>
        <span class="hub-metric-lbl">Turnstile Integration in Progress</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">GOV.BR</span>
        <span class="hub-metric-lbl">Official Federal Standard</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ conecta.residents }} Fellows</span>
        <span class="hub-metric-lbl">Engineering Squad</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>The Public Sector Bottleneck</h3>
          <p>
            The campus already used a proprietary desktop application for access control. Its integration limitations made it difficult to connect gatehouse management to other institutional applications.
          </p>
          <p>
            Furthermore, parents and legal guardians of adolescent students enrolled in integrated technical high school had no digital mechanism to track campus attendance, receive real-time arrival/departure alerts, or access official school bulletins.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>The Engineered Solution</h3>
          <p>
            A cohesive dual-product architecture built on a single unified backend:
          </p>
          <ul>
            <li><strong>Catraka CATCE:</strong> turnstile and gatehouse access management backend designed to interface with physical IoT readers and campus security gates.</li>
            <li><strong>Conecta CATCE (Mobile App):</strong> mobile application for parents featuring verified student linkages, official bulletins and a direct institutional service channel. Entry/exit notifications depend on turnstile integration, which remains under development.</li>
            <li><strong>Design System GOV.BR:</strong> complete visual and interaction compliance with the official Brazilian Federal Design System standards.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Scalability Beyond Campus</h3>
          <p>
            Access management and communication with guardians are shared challenges across federal education campuses.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Official GOV.BR Design System</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Turnstile IoT Integration</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Movement Alerts in Development</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Secure SUAP Federation</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Tamper-Proof Access Trail</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Technical Specifications & Architecture</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Stakeholder</span>
              <span class="hub-spec-value">General Campus Directorate · IFPI</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Status</span>
              <span class="hub-spec-value">Deployed · Documentary handover in progress</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Core Stack</span>
              <span class="hub-spec-value">{{ conecta.stack }}</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Visual Standard</span>
              <span class="hub-spec-value">Federal Design System (GOV.BR)</span>
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
                <span>INTEGRATED MOBILE SUITE · 4 SCREENS</span>
              </div>
              <span style="color: #94a3b8; font-size: 10px;">GOV.BR STANDARD</span>
            </div>
            <div class="hub-mobile-suite-screen">
              <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }}" data-lightbox-caption="Integrated 4-module view of the Conecta CATCE mobile suite. Click to expand and inspect each screen in high definition." aria-label="Expand Conecta CATCE mobile screens suite">
                <img width="1100" height="544" src="{{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }}" alt="Integrated 4-screen view of Conecta CATCE mobile suite" class="hub-case-img" loading="lazy">
                <span class="hub-lightbox-zoom-hint mono">
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                  <span>Expand</span>
                </span>
              </button>
            </div>
          </div>
        </div>
        <figcaption class="mono dim" style="padding: 0 4px; font-size: 11.5px; line-height: 1.45; text-align: center;">
          Integrated 4-module view of the Conecta CATCE mobile suite. Click to expand and inspect each screen in high definition.
        </figcaption>
        <div class="hub-case-card-stats mono">
          <div><span>Design Standard:</span> GOV.BR Design System</div>
          <div><span>Audience:</span> Parents & Students</div>
          <div><span>Integration:</span> IoT Gates & SUAP</div>
          <div><span>Fellow Squad:</span> 4 engineering fellows</div>
        </div>
      </div>
    </div>

    <!-- Contextual Action Bar -->
    <div class="hub-case-actions">
      <a href="mailto:{{ coordination.email }},{{ technical.email }}?subject=[Conecta%20CATCE]%20Campus%20Deployment%20Inquiry" class="hub-case-action-btn primary mono">
        <span>Deploy at Your Institution →</span>
      </a>
      <a href="#engagement" class="hub-case-action-btn secondary mono">
        <span>Discuss Integrations</span>
      </a>
    </div>
  </article>

  <!-- TRACK 04: SPIA MAESTRO -->
  <article class="hub-case-card hub-case-card--assurance hub-case-card-restricted" id="spia">
    <div class="hub-assurance-seal mono">
      <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
      <span>STATE POLICE CLASSIFICATION · BRAZILIAN DATA PROTECTION LAW (LGPD)</span>
      <span class="seal-verified"><svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><polyline points="20 6 9 17 4 12"></polyline></svg> Active Protocol</span>
    </div>

    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">TRACK 04 · PUBLIC SAFETY & AI</span>
        <span class="badge-status-restricted">STATE PUBLIC SAFETY CLASSIFICATION</span>
      </div>
      <h2>SPIA Maestro — State Public Safety Intelligence Partnership</h2>
      <p class="hub-case-demandante mono">
        <strong>Institutional Stakeholder:</strong> State Department of Public Safety (SSP-PI) · via Piauí Gov Tech
      </p>
    </header>

    <div class="hub-product-metrics">
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Availability</span>
        <span class="hub-metric-lbl">Operational Requirement</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">Traceability</span>
        <span class="hub-metric-lbl">Cryptographic LGPD Trail</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">State Clearance</span>
        <span class="hub-metric-lbl">Public Safety Secrecy</span>
      </div>
      <div class="hub-metric-tile">
        <span class="hub-metric-val">{{ spia.residents }} Fellows</span>
        <span class="hub-metric-lbl">Mission-Critical Squad</span>
      </div>
    </div>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>The Mission-Critical Context</h3>
          <p>
            SPIA is the State of Piauí's statewide electronic surveillance and smart license plate recognition network. The Maestro initiative focuses on automating intelligence flows and high-consequence data dispatching.
          </p>
        </div>

        <div class="hub-case-block">
          <h3>Fellow Contributions</h3>
          <p>
            {{ spia.residents }} INOVATECH fellows develop high-throughput backend services under state engineering supervision and strict confidentiality protocols:
          </p>
          <ul>
            <li>Continuous development of high-availability backend microservices.</li>
            <li>Secure integration with state police intelligence datasets under rigorous role-based authorization and LGPD compliance.</li>
            <li>Comprehensive operational audit trails guaranteeing algorithmic and institutional transparency.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>High-Consequence Engineering & Legal Confidentiality</h3>
          <p>
            Fellows experience software engineering under mission-critical conditions where data accuracy is paramount. Due to state legal and strategic security mandates, internal architectures, servers, and personnel rosters remain strictly classified.
          </p>
        </div>

        <div class="hub-rule-pills">
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> State Public Safety Network</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Automated Computer Vision Intel</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Immutable Audit Trail</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> Strict Role-Based Security & LGPD</span>
          <span class="hub-rule-pill"><span class="pill-dot" aria-hidden="true"></span> High-Throughput Microservices</span>
        </div>

        <div class="hub-tech-specs">
          <div class="hub-tech-specs-title mono">Technical Specifications & Architecture</div>
          <div class="hub-tech-specs-grid">
            <div class="hub-spec-item">
              <span class="hub-spec-label">Stakeholder</span>
              <span class="hub-spec-value">State Department of Public Safety (SSP-PI)</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Status</span>
              <span class="hub-spec-value">Assisted Operation in Police Cloud</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Architecture</span>
              <span class="hub-spec-value">Mission-Critical Microservices · Event-Driven</span>
            </div>
            <div class="hub-spec-item">
              <span class="hub-spec-label">Standard</span>
              <span class="hub-spec-value">Legal Classification & LGPD Privacy Standard</span>
            </div>
          </div>
        </div>
      </div>

      <div class="hub-case-media">
        <div class="hub-assurance-photo-frame">
          <div class="hub-assurance-photo-header mono">
            <div class="hub-assurance-photo-header-left">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
              <span>AUTHORIZED INSTITUTIONAL RECORD · SSP-PI</span>
            </div>
            <div class="hub-assurance-photo-header-right">
              <span>● AUDITED</span>
            </div>
          </div>
          <div class="hub-assurance-photo-screen">
            <button type="button" class="hub-lightbox-trigger" data-lightbox-src="{{ '/assets/img/equipes/foto-spia-equipe.jpg' | relative_url }}" data-lightbox-caption="Official authorized presentation of the SPIA Maestro Squad at the INOVATECH Public Showcase in Piauí Gov Tech." aria-label="Expand official SPIA Maestro squad photo">
              <img width="787" height="524" src="{{ '/assets/img/equipes/foto-spia-equipe.jpg' | relative_url }}" alt="SPIA Maestro Squad presenting at INOVATECH Showcase" class="hub-case-img" loading="lazy">
              <span class="hub-lightbox-zoom-hint mono">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg>
                <span>Expand</span>
              </span>
            </button>
          </div>
          <div class="hub-assurance-photo-footer mono">
            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><polyline points="20 6 9 17 4 12"></polyline></svg>
            <span>Official Authorized Record · Presentation at PiauíGovTec Hub</span>
          </div>
        </div>
        <div class="hub-case-card-stats mono">
          <div><span>Environment:</span> State Police Infrastructure</div>
          <div><span>Policy:</span> State Confidentiality Statute</div>
          <div><span>Standard:</span> High-consequence data consistency</div>
          <div><span>Fellow Squad:</span> 4 engineering fellows</div>
        </div>
      </div>
    </div>

    <!-- Contextual Action Bar -->
    <div class="hub-case-actions">
      <a href="mailto:{{ state_contact.email }},{{ coordination.email }}?subject=[SPIA%20Maestro]%20GovTech%20Cooperation%20Inquiry" class="hub-case-action-btn primary mono">
        <span>Institutional GovTech Partnership →</span>
      </a>
      <a href="#engagement" class="hub-case-action-btn secondary mono">
        <span>Governance & Security Protocols</span>
      </a>
    </div>
  </article>

  <!-- INTERNATIONAL ENGAGEMENT -->
  <section class="hub-showroom-cta-box" id="engagement">
    <div class="hub-showroom-cta-head">
      <p class="hub-kicker">Global Engagement Models</p>
      <h2>Collaborate with INOVATECH</h2>
      <p class="hub-section-lead">
        Phase 1 proved that the public residency model builds real, production-ready software on schedule and within budget. We invite international and institutional partners to engage across three tracks:
      </p>
    </div>

    <div class="hub-colabore-grid" style="margin-top: 32px;">
      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">01</div>
        <h3>Institutional Challenge Sponsor</h3>
        <p>
          Bring a public sector challenge, users and a focal point. Scope, capacity and institutional agreements are assessed before mobilising fellows and instructors.
        </p>
      </div>

      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">02</div>
        <h3>Assisted Operations Partner</h3>
        <p>
          Provide infrastructure, cloud credits, or operational support to scale SGAE, Flix, or Conecta across federal networks, state agencies, and municipal governments.
        </p>
      </div>

      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">03</div>
        <h3>Fund a Fellowship Cohort</h3>
        <p>
          Support new engineering fellowships through institutional coordination, applied learning and documented project milestones.
        </p>
      </div>
    </div>

    <div class="hub-showroom-contacts">{% include contatos.html %}</div>
  </section>
</div>
