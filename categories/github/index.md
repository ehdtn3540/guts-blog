---
title: GitHub
permalink: /categories/github/
---

{% assign posts = site.categories.github %}

<div class="entries-list">
  {% for post in posts %}
    <div class="archive__item">
      <h2 class="archive__item-title">
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      </h2>

      <p class="archive__item-excerpt">
        {{ post.excerpt | strip_html | truncate: 120 }}
      </p>

      <p class="archive__item-meta">
        {{ post.date | date: "%Y-%m-%d" }}
      </p>
    </div>
  {% endfor %}
</div>

