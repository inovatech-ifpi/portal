---
layout: page
title: "Links Oficiais"
permalink: /links/
kicker: "// atalhos e contatos institucionais"
nav_icon: "⇲"
---

## Repositórios das equipes

Disponíveis após o aceite do convite na org `inovatech-ifpi`. Se ainda não aceitou, verifique o e-mail cadastrado no GitHub.

<div class="table-wrap">
  <table>
    <thead><tr><th>Equipe</th><th>Projeto</th><th>Repositório</th></tr></thead>
    <tbody>
      {% for project in site.data.portal.projects %}
        <tr>
          <td><strong>{{ project.code }} — {{ project.name }}</strong></td>
          <td>{{ project.description }}</td>
          <td>
            {% if project.repository %}
              <a href="https://github.com/inovatech-ifpi/{{ project.repository }}">{{ project.repository }}</a>
            {% else %}
              <span class="dim">infraestrutura externa</span>
            {% endif %}
          </td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

## Formulários

- Registro de impedimento — _(procure seu instrutor)_

## Contatos institucionais

<div class="contact-grid">
  {% for contact in site.data.portal.contacts %}
    <article class="contact-card">
      <strong>{{ contact.name }}</strong>
      <span class="mono">{{ contact.role }}</span>
      <p>{{ contact.topic }}</p>
    </article>
  {% endfor %}
</div>

## Este portal

Canal oficial da residência. Atualizado toda segunda-feira.
