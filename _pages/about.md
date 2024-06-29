---
permalink: /
title: "About Me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<section class="home-hero" aria-label="Introduction summary">
  <h2 class="home-hero__title">Recent News and Publications</h2>
  <div class="home-hero__grid home-hero__grid--two">
    <article class="home-hero__card">
      <p class="home-hero__card-label">Recent News</p>
      <p class="home-hero__card-description">Latest posts, updates, and activity timeline.</p>
      <a class="home-hero__card-link" href="/year-archive/">Go to News</a>
    </article>
    <article class="home-hero__card">
      <p class="home-hero__card-label">Publications</p>
      {% assign latest_publication = site.publications | sort: "date" | reverse | first %}
      {% if latest_publication %}
        <p class="home-hero__preview-label">Latest Paper</p>
        <p class="home-hero__preview-title">
          <a href="{{ latest_publication.url | relative_url }}">{{ latest_publication.title }}</a>
        </p>
        {% capture latest_publication_meta %}{% if latest_publication.venue %}{{ latest_publication.venue }}{% endif %}{% if latest_publication.venue and latest_publication.date %} · {% endif %}{% if latest_publication.date %}{{ latest_publication.date | date: "%Y" }}{% endif %}{% endcapture %}
        <p class="home-hero__preview-meta">{{ latest_publication_meta | strip }}</p>
      {% else %}
        <p class="home-hero__card-description">Conference papers and research outputs.</p>
      {% endif %}
      <a class="home-hero__card-link" href="/publications/">Go to Publications</a>
    </article>
  </div>
</section>

I recently received my B.S. in Computer Science and Engineering from **Sogang University**, Seoul, Korea (Mar. 2020 - Feb. 2026). I worked at the [Information Security Lab](https://islab-sogang.github.io/) under the supervision of Prof. Jaeseung Choi during my undergraduate studies.

My research focuses on **program analysis** and **software security**, with a particular interest in automated testing and repair techniques for smart contracts. I am currently preparing for my next academic step (Ph.D. program TBD).

## Research Interests
- Program Analysis
- Software Security
- Automated Testing
- Automated Repair


## Education
- **B.S. in Computer Science and Engineering**, Sogang University (Mar. 2020 - Feb. 2026)
  - Summa Cum Laude (3rd out of 73)

## Research Experience

**Undergraduate Researcher**, Information Security Lab, Sogang University (Jan. 2024 - Feb. 2026)
- Advisor: Prof. Jaeseung Choi
- Conducted research on fuzz testing for Ethereum smart contracts
- Developed **IConFuzz**, a constraint-aware argument mutation fuzzer
- Submitted to conference (under review)

**Research Intern**, System Security Lab, Indiana University Bloomington (Feb. 2025 - Jun. 2025)
- Advisor: Prof. Hyungsub Kim
- Developed dynamic analysis tools using Valgrind and LLVM
- Analyzed ArduPilot code base for rover control systems

## Personal Interests
- Football (Favorite team: Manchester United <img src="/images/manutd.png" alt="Manchester United" class="inline-team-icon" />)
- Exploring good restaurants and cafés
- Enjoying specialty coffee
