---
permalink: /
title: "About"
layout: single
author_profile: false
redirect_from:
  - /about/
  - /about.html
---

<script>
  document.documentElement.removeAttribute('data-theme');
  localStorage.setItem('theme', 'light');
</script>
<style>
  .page__title { display: none !important; }
  .page { float: none !important; width: 100% !important; margin: 0 !important; padding: 0 !important; }
  .page__inner-wrap { margin: 0 !important; padding: 0 !important; }
</style>

{% assign p = site.data.profile %}

<section class="bio-card">
  <div class="bio-grid">

    <div class="bio-photo-col">
      <img class="bio-photo" src="{{ p.photo }}" alt="{{ p.name }}" />
      <div class="contact-info-block">
        <p class="contact-info-line contact-email">
          <span>Email</span>
          <a href="mailto:{{ p.email }}">{{ p.email }}</a>
        </p>
        <p class="contact-info-line">
          <span>Location</span>
          {{ p.location }}
        </p>
      </div>
      <div class="bio-social-links">
        {% for s in p.social %}
          <a href="{{ s.url }}" title="{{ s.title }}"><i class="{{ s.icon }}"></i></a>
        {% endfor %}
      </div>
    </div>

    <h1 class="bio-name">
      {{ p.name }}
      <span class="korean-name">({{ p.name_korean }})</span>
      <a href="/files/cv.pdf" target="_blank" class="cv-download-link cv-name-link">
        <i class="fas fa-arrow-down"></i> CV
      </a>
    </h1>

    <div class="bio-title">{{ p.title }}</div>

    <div class="bio-intro">
      <p class="bio-typing"><span id="typing-target"></span></p>
      <div class="bio-text">
        <p>{{ p.bio }}</p>
      </div>
    </div>

    <div class="bio-details">
      <div class="bio-meta">

        <div class="bio-meta-block">
          <h4>Interests</h4>
          <ul>
            {% for item in p.interests %}
              <li>{{ item }}</li>
            {% endfor %}
          </ul>
        </div>

        <div class="bio-meta-block">
          <h4>Trajectory</h4>
          <ul class="trajectory-list">
            {% for t in p.trajectory %}
              <li>
                {% if t.img %}
                  <div class="traj-logo-wrap">
                    <img class="traj-logo" src="{{ t.img }}" alt="{{ t.name }}" />
                  </div>
                {% else %}
                  <span class="traj-icon-placeholder"><i class="{{ t.icon }}"></i></span>
                {% endif %}
                <div>
                  <strong>{{ t.name }}</strong>
                  <span>{{ t.role }}</span>
                </div>
              </li>
            {% endfor %}
          </ul>
        </div>

        <div class="bio-meta-block">
          <h4>Awards</h4>
          <ul>
            {% for a in p.awards %}
              <li>
                {{ a.name }}
                <span>{{ a.detail }}</span>
              </li>
            {% endfor %}
          </ul>
        </div>

      </div>
    </div>

  </div>
</section>

<div class="section">
  <span class="section-title">Recent News</span>
  <ul class="news-list">
    {% for item in site.data.news %}
      <li class="news-item">
        <span class="news-date">{{ item.year }}</span>
        <span class="news-badge">{{ item.badge }}</span>
        <span class="news-content">{{ item.content }}</span>
      </li>
    {% endfor %}
  </ul>
</div>

<div class="section" id="publications">
  <span class="section-title">Publications</span>
  <div class="pub-list">
    {% for pub in site.data.publications.featured %}
      <div class="pub-item">
        <div class="pub-title">
          {% if pub.url %}<a href="{{ pub.url }}">{{ pub.name }}</a>{% else %}{{ pub.name }}{% endif %}
        </div>
        <div class="pub-authors">{{ pub.description }}</div>
      </div>
    {% endfor %}
  </div>
</div>


<script>
document.addEventListener("DOMContentLoaded", function () {
  if (typeof TypeIt === "undefined") return;
  var lines = [{% for line in p.typing_lines %}"{{ line }}"{% unless forloop.last %},{% endunless %}{% endfor %}];
  var ti = new TypeIt("#typing-target", { speed: 55, deleteSpeed: 30, waitUntilVisible: true, loop: true });
  lines.forEach(function(line) { ti.type(line).pause(2500).delete().pause(500); });
  ti.go();
});
</script>
