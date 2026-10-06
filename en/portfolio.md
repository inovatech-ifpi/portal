---
layout: page
title: "Web Summit Portfolio"
permalink: /en/portfolio/
kicker: "// web summit showcase edition"
description: "Four production-grade GovTech products engineered by 15 fellows for Brazil's federal education network and state public safety"
nav_icon: "▣"
nav_title: "Portfolio (Web Summit)"
lang: en
url_pt: /portfolio/
---

The **INOVATECH Residency** is an intensive public-sector software engineering program led by the **Federal Institute of Piauí (IFPI Campus Teresina Central)** in strategic partnership with **Piauí Gov Tech / ETIPI** (State of Piauí Digital Transformation Agency).

Fifteen selected engineering fellows, funded with 20-hour weekly stipends, work in multidisciplinary squads to solve real, mission-critical bottlenecks for public institutions and state government agencies, guided by senior academic faculty, tracking work on institutional GitHub repositories, and delivering software through formal user homologation.

<div class="table-wrap">
  <table>
    <tbody>
      <tr>
        <td><strong>15</strong> Engineering Fellows across <strong>4</strong> real stakeholder tracks</td>
        <td><strong>208</strong> completed work items and <strong>148</strong> integrated PRs</td>
      </tr>
      <tr>
        <td><strong>4 of 4</strong> formal milestone gates delivered on schedule</td>
        <td><strong>3</strong> production-deployed systems in IFPI (continuous evolution in Sprint E2)</td>
      </tr>
      <tr>
        <td><strong>1</strong> mission-critical track with State Government (SSP-PI)</td>
        <td>Active institutional dialogues with Public Defenders (DPE) and Prosecutors (MPPI)</td>
      </tr>
    </tbody>
  </table>
</div>

<p class="mono dim">Phase 1: May 12 to August 14, 2026 (build) and September 11 (Public Showcase) · Consolidated Status: September 2026</p>

What sets the model apart: fellows do not build toy exercises, they ship production software. Each track has an authentic institutional stakeholder, a verified regulatory framework, and a mandatory **Formal Handover Gate** at completion — a system is only considered delivered when the sector appoints a permanent civil service maintainer, receives operational runbooks, verifies rollback procedures, and signs the transfer protocol.

---

## SGAE — Student Welfare & Benefit Compliance Engine

<p class="mono dim">Institutional Stakeholder: Directorate of Community Outreach & Student Welfare · Status: Deployed in production (Aug 14); Sprint E2 active; formal transfer in progress</p>

![SGAE Payments Module]({{ '/assets/img/portfolio/tela-sgae-pagamentos.jpg' | relative_url }})

**The Public Sector Bottleneck.** The campus student welfare department administers **7 distinct categories of financial aid** (housing, food, transportation, medical, and academic grants) under the POLAE regulatory policy (Resolution 35/2021). The program distributes **R$ 1.1 million annually (~$220,000 USD / €200,000 EUR)** across approximately **580 vulnerable student beneficiaries**. Previously, administration was conducted via unversioned, shared spreadsheets across eight staff members, creating operational fragility: zero auditability, cumbersome manual cross-checks to detect illegal benefit accumulation, and frequent payment rejections caused by manual banking data typos.

**The Engineered Solution.** SGAE transforms student welfare into a traceable, automated state machine (`Student · Benefit · Month`), from application to disbursement. The POLAE business rules are embedded natively in the engine, flagging accumulation conflicts in real time. Monthly payroll disbursement manifests are compiled automatically from validated records, capturing approval, suspension, and rejection history. Banking and personal data are strictly protected under Brazil's General Data Protection Law (LGPD), with role-based access control and complete audit logging.

**Scalability Beyond Campus.** POLAE is the unified student assistance policy for the **entire IFPI federal network** (20+ campuses, 30,000+ students). SGAE was architected from inception on this universal regulatory baseline, enabling seamless multi-tenant expansion across other federal institutes without core rewrites.

---

## IFPI Flix — Institutional Educational Streaming Platform

<p class="mono dim">Institutional Stakeholder: Office of the President (Reitoria), IFPI · Status: Live in production (Aug 14); scope validated by University President (Aug 28); Sprint E2 active</p>

![IFPI Flix Public Catalog]({{ '/assets/img/portfolio/tela-flix-home.jpg' | relative_url }})

**The Public Sector Bottleneck.** Public vocational and higher-education institutions generate extraordinary educational, scientific, and cultural media assets. However, this content remains scattered across disparate social media accounts, internal file servers, and administrative portals. Prospective students, rural communities, and the broader public have no centralized, intuitive entry point to discover available academic programs and institutional research.

**The Engineered Solution.** A consumer-grade streaming repository: users navigate across campuses, academic departments, and research projects with featured trailers, thematic rows, and unified search. For content creators, an intuitive Administrative CMS enables department managers to curate playlists, tag video assets, and configure public visibility without filing IT support tickets.

**Scalability Beyond Campus.** By design, the catalog supports multi-campus federation across the federal education network. Each campus becomes an autonomous channel within a unified national showcase.

---

## Conecta CATCE & Catraka — Smart Campus Access & Safety

<p class="mono dim">Institutional Stakeholder: General Campus Directorate · Status: Deployed in production (Aug 14); DTI permanent maintainer confirmed; Sprint E2 active; turnstile integration in progress</p>

![Conecta CATCE Mobile Application]({{ '/assets/img/portfolio/tela-conecta-app.jpg' | relative_url }})

**The Public Sector Bottleneck.** Serving thousands of students, faculty, and visitors daily, the central campus lacked an integrated access control system, relying on manual paper logs at security gates. Furthermore, parents and legal guardians of adolescent students enrolled in integrated technical high school had no digital mechanism to track campus attendance, receive real-time arrival/departure alerts, or access official school bulletins.

**The Engineered Solution.** A cohesive dual-product architecture built on a single unified backend:
- **Catraka CATCE:** Turnstile and gatehouse access management backend designed to interface with physical IoT readers and campus security gates.
- **Conecta CATCE (Mobile App):** Mobile application for parents and guardians featuring verified student linkages, real-time entry/exit push notifications, official emergency bulletins, and a direct institutional service channel.
- **Design System GOV.BR:** Complete visual and interaction compliance with the official Brazilian Federal Design System standards.

**Scalability Beyond Campus.** Physical security and guardian engagement represent standard challenges across the 600+ federal technical campuses in Brazil.

---

## SPIA Maestro — Real-Time Public Safety Video Intelligence

<p class="mono dim">Institutional Stakeholder: State Department of Public Safety (SSP-PI), via Piauí Gov Tech · Status: Operational on State Public Safety Infrastructure; continuous backend development by fellows under state engineering supervision</p>

![SPIA Maestro Squad presenting at the INOVATECH Public Showcase]({{ '/assets/img/portfolio/foto-spia-equipe.jpg' | relative_url }})

**The Mission-Critical Bottleneck.** SPIA is the State of Piauí's statewide smart surveillance and automated license plate recognition network. Previously, dispatching and removing target vehicles across urban monitoring centers required human intervention. Manual processing caused latency and database synchronization mismatches. Outdated camera targets carry severe public risks, potentially triggering wrongful police stops of innocent drivers.

**The Maestro Engine & Fellow Contributions.** Maestro is the automated target distribution engine of the state police. It ingests police incident reports, verifies and cross-references data integrity, orchestrates instantaneous target broadcast to city cameras, and immediately revokes targets once an incident is closed. Four INOVATECH fellows were embedded directly into the state maintainer squad, developing high-throughput backend services under rigorous requirements of zero-downtime, role-based authorization, comprehensive auditability, and LGPD data protection.

**World-Class Formative Engineering.** Fellows master software engineering under mission-critical conditions where data accuracy outweighs raw speed, because the output of their algorithms directly drives live law enforcement operations.

*(Operational architectures, internal topologies, and police incident databases remain strictly classified under SSP-PI state security regulations).*

---

## Web Summit Engagement & Next Cycle

Phase 1 proved that the public residency model builds real, production-ready software on schedule and within budget. At Web Summit, we invite global and institutional partners to engage across three tracks:

**1. Institutional Challenge Sponsor (Bring a Problem).** A public agency presents a verified operational bottleneck with dedicated domain owners. INOVATECH mobilizes an elite engineering squad guided by senior academic instructors through formal handover.

**2. Assisted Operations & Network Expansion Partner.** Provide infrastructure, cloud credits, or operational support to scale SGAE, Flix, or Conecta across federal networks, state agencies, and municipal governments, backing real production telemetry.

**3. Sponsor an International Fellowship Cohort.** Fund living stipends for a new cohort of 20 to 50 fellows. Replicate our vetted model: rigorous talent diagnosis, intensive product-oriented engineering, and auditable milestone deliveries.

<div class="alert" style="margin-top: 24px;">
  <span class="alert-tag mono">CONTACT</span>
  <p>
    <strong>General Residency Coordination:</strong> Prof. Franciéric Alves de Araújo · IFPI Campus Teresina Central · <a href="mailto:eric@ifpi.edu.br">eric@ifpi.edu.br</a><br>
    <strong>Technical & Engineering Direction:</strong> Prof. Aislan Rafael Rodrigues de Sousa · IFPI Campus Teresina Central · <a href="mailto:aislan@ifpi.edu.br">aislan@ifpi.edu.br</a><br>
    <strong>State Digital Transformation Partnership:</strong> Piauí Gov Tech / ETIPI · <a href="mailto:adm@piauigovtech.org">adm@piauigovtech.org</a> · <a href="https://piauigovtech.org">piauigovtech.org</a><br>
    <strong>Official Residency Portal:</strong> <a href="https://inovatech-ifpi.github.io/portal/">inovatech-ifpi.github.io/portal/</a>
  </p>
</div>
