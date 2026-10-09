---
layout: hub
title: "Web Summit Showcase & Tech Portfolio"
permalink: /en/portfolio/
description: "Four production-grade GovTech products engineered by 15 fellows for Brazil's federal education network and state public safety."
lang: en
url_pt: /portfolio/
---

<div class="hub-page-hero">
  <div class="hub-container">
    <div class="hub-hero-badge">
      <span class="hub-badge-dot" aria-hidden="true"></span>
      <span>WEB SUMMIT LISBON 2026 EDITION · IFPI & PIAUÍ GOV TECH</span>
    </div>
    <h1 class="hub-page-title">Sovereign GovTech Solutions Engineered for Real Impact</h1>
    <p class="hub-page-lead">
      At the INOVATECH Tech Residency, fellows build software products. Every solution addresses an authentic public bottleneck, operates under real regulations, and concludes with a formal 4-Pillar Handover Protocol.
    </p>

    <div class="hub-stats-ribbon">
      <div class="ribbon-item">
        <span class="ribbon-num mono">15</span>
        <span class="ribbon-label">Engineering Fellows (20 h/wk)</span>
      </div>
      <div class="ribbon-item">
        <span class="ribbon-num mono">4</span>
        <span class="ribbon-label">Mission-Critical Tracks</span>
      </div>
      <div class="ribbon-item">
        <span class="ribbon-num mono">3</span>
        <span class="ribbon-label">Systems Live in IFPI Production</span>
      </div>
      <div class="ribbon-item">
        <span class="ribbon-num mono">208</span>
        <span class="ribbon-label">Audited Technical Deliveries</span>
      </div>
      <div class="ribbon-item">
        <span class="ribbon-num mono">100%</span>
        <span class="ribbon-label">On-Schedule Milestone Gates</span>
      </div>
    </div>
  </div>
</div>

<div class="hub-container hub-showroom-body">
  <nav class="hub-showroom-nav mono" aria-label="Quick track navigation">
    <span>JUMP TO:</span>
    <a href="#sgae">01. SGAE (FinTech)</a>
    <a href="#flix">02. IFPI Flix (EdTech)</a>
    <a href="#conecta">03. Conecta CATCE (IoT)</a>
    <a href="#spia">04. SPIA Maestro (Public Safety)</a>
    <a href="#engagement">05. Web Summit Collaboration</a>
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
    </header>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>The Public Sector Bottleneck</h3>
          <p>
            The campus student welfare department administers <strong>7 distinct categories of financial aid</strong> (housing, food, transportation, medical, and academic grants) under the POLAE regulatory policy (Resolution 35/2021). The program distributes <strong>R$ 1.1 million annually</strong> across approximately <strong>580 vulnerable student beneficiaries</strong>.
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
            POLAE is the unified student assistance policy for the <strong>entire IFPI federal network</strong> (20+ campuses, 30,000+ students). SGAE was architected from inception on this universal regulatory baseline, enabling seamless multi-tenant expansion across other federal institutes without core rewrites.
          </p>
        </div>
      </div>

      <div class="hub-case-media">
        <figure class="hub-case-figure">
          <img src="{{ '/assets/img/portfolio/tela-sgae-pagamentos.jpg' | relative_url }}" alt="SGAE Payments Module" class="hub-case-img">
          <figcaption class="mono dim">
            SGAE Automated Payroll Module with real-time POLAE compliance cross-checks.
          </figcaption>
        </figure>
        <div class="hub-case-card-stats mono">
          <div><span>Budget:</span> R$ 1.1M/year</div>
          <div><span>Beneficiaries:</span> ~580 students</div>
          <div><span>Grants:</span> 7 POLAE categories</div>
          <div><span>Fellow Squad:</span> 4 engineering fellows</div>
        </div>
      </div>
    </div>
  </article>

  <!-- TRACK 02: FLIX -->
  <article class="hub-case-card" id="flix">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">TRACK 02 · EDTECH & MEDIA</span>
        <span class="badge-status">LIVE IN PRODUCTION · SCOPE VALIDATED</span>
      </div>
      <h2>IFPI Flix — Institutional Educational Streaming Platform</h2>
      <p class="hub-case-demandante mono">
        <strong>Institutional Stakeholder:</strong> Office of the University President (Reitoria), IFPI
      </p>
    </header>

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
            <li><strong>Zero-Code Administrative CMS:</strong> enables department managers to curate playlists, tag video assets, and configure public visibility without filing IT support tickets.</li>
            <li><strong>Low-Bandwidth Optimization:</strong> responsive streaming performance tailored for rural and low-connectivity mobile networks.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Scalability Beyond Campus</h3>
          <p>
            By design, the catalog supports multi-campus federation across the federal education network. Each campus becomes an autonomous channel within a unified national showcase.
          </p>
        </div>
      </div>

      <div class="hub-case-media">
        <figure class="hub-case-figure">
          <img src="{{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }}" alt="IFPI Flix Streaming Catalog" class="hub-case-img">
          <figcaption class="mono dim">
            IFPI Flix public homepage featuring thematic educational rows and campus filters.
          </figcaption>
        </figure>
        <div class="hub-case-card-stats mono">
          <div><span>Audience:</span> Public & Academic</div>
          <div><span>Scope:</span> Federal Network-wide</div>
          <div><span>Format:</span> On-demand streaming</div>
          <div><span>Fellow Squad:</span> 3 engineering fellows</div>
        </div>
      </div>
    </div>
  </article>

  <!-- TRACK 03: CONECTA CATCE -->
  <article class="hub-case-card" id="conecta">
    <header class="hub-case-card-head">
      <div class="hub-case-badge-row mono">
        <span class="badge-code">TRACK 03 · IOT & SMART CAMPUS</span>
        <span class="badge-status">DEPLOYED · DTI MAINTAINER</span>
      </div>
      <h2>Conecta CATCE & Catraka — Smart Campus Access Control</h2>
      <p class="hub-case-demandante mono">
        <strong>Institutional Stakeholder:</strong> General Campus Directorate · IFPI Central Campus
      </p>
    </header>

    <div class="hub-case-grid">
      <div class="hub-case-text">
        <div class="hub-case-block">
          <h3>The Public Sector Bottleneck</h3>
          <p>
            Serving thousands of students, faculty, and visitors daily, the central campus lacked an integrated access control system, relying on manual paper logs at security gates.
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
            <li><strong>Conecta CATCE (Mobile App):</strong> mobile application for parents featuring verified student linkages, real-time entry/exit push notifications, official bulletins, and a direct institutional service channel.</li>
            <li><strong>Design System GOV.BR:</strong> complete visual and interaction compliance with the official Brazilian Federal Design System standards.</li>
          </ul>
        </div>

        <div class="hub-case-block">
          <h3>Scalability Beyond Campus</h3>
          <p>
            Physical security and guardian engagement represent standard challenges across the 600+ federal technical campuses in Brazil.
          </p>
        </div>
      </div>

      <div class="hub-case-media">
        <figure class="hub-case-figure">
          <img src="{{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }}" alt="Conecta CATCE Mobile Application" class="hub-case-img">
          <figcaption class="mono dim">
            Conecta CATCE mobile screens: authentication, attendance log, alerts, and service.
          </figcaption>
        </figure>
        <div class="hub-case-card-stats mono">
          <div><span>Design Standard:</span> GOV.BR Design System</div>
          <div><span>Audience:</span> Parents & Students</div>
          <div><span>Integration:</span> IoT Gates & SUAP</div>
          <div><span>Fellow Squad:</span> 4 engineering fellows</div>
        </div>
      </div>
    </div>
  </article>

  <!-- TRACK 04: SPIA MAESTRO -->
  <article class="hub-case-card hub-case-card-restricted" id="spia">
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
            Four INOVATECH fellows develop high-throughput backend services under state engineering supervision and strict confidentiality protocols:
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
      </div>

      <div class="hub-case-media">
        <figure class="hub-case-figure">
          <img src="{{ '/assets/img/equipes/foto-spia-equipe.jpg' | relative_url }}" alt="SPIA Maestro Squad presenting at INOVATECH Showcase" class="hub-case-img">
          <figcaption class="mono dim">
            SPIA Maestro fellow squad presenting at the INOVATECH Public Showcase in Piauí Gov Tech.
          </figcaption>
        </figure>
        <div class="hub-case-card-stats mono">
          <div><span>Environment:</span> State Police Infrastructure</div>
          <div><span>Policy:</span> State Confidentiality Statute</div>
          <div><span>Standard:</span> High-consequence data consistency</div>
          <div><span>Fellow Squad:</span> 4 engineering fellows</div>
        </div>
      </div>
    </div>
  </article>

  <!-- WEB SUMMIT ENGAGEMENT -->
  <section class="hub-showroom-cta-box" id="engagement">
    <div class="hub-showroom-cta-head">
      <p class="hub-kicker">Global Engagement Models</p>
      <h2>Collaborate with INOVATECH at Web Summit Lisbon 2026</h2>
      <p class="hub-section-lead">
        Phase 1 proved that the public residency model builds real, production-ready software on schedule and within budget. At Web Summit, we invite global and institutional partners to engage across three tracks:
      </p>
    </div>

    <div class="hub-colabore-grid" style="margin-top: 32px;">
      <div class="hub-colabore-card hub-colabore-card--light">
        <div class="hub-colabore-num mono">01</div>
        <h3>Institutional Challenge Sponsor</h3>
        <p>
          Bring a verified public sector bottleneck with dedicated domain owners. INOVATECH mobilizes an elite engineering squad guided by senior academic faculty through formal handover.
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
          Fund living stipends for a new cohort of 20 to 50 fellows. Replicate our vetted model: rigorous talent diagnosis, intensive product-oriented engineering, and auditable milestone deliveries.
        </p>
      </div>
    </div>

    <div class="hub-showroom-contacts mono">
      <p>
        <strong>General Residency Coordination:</strong> Prof. Franciéric Alves de Araújo · IFPI Central Campus · <a href="mailto:eric@ifpi.edu.br">eric@ifpi.edu.br</a><br>
        <strong>Residency Instructor:</strong> Prof. Aislan Rafael Rodrigues de Sousa · IFPI Central Campus · <a href="mailto:aislan@ifpi.edu.br">aislan@ifpi.edu.br</a><br>
        <strong>State Digital Transformation Agency:</strong> Piauí Gov Tech / ETIPI · <a href="mailto:adm@piauigovtech.org">adm@piauigovtech.org</a> · <a href="https://piauigovtech.org">piauigovtech.org</a><br>
        <strong>Official Portal:</strong> <a href="https://inovatech-ifpi.github.io/portal/">inovatech-ifpi.github.io/portal/</a>
      </p>
    </div>
  </section>
</div>
