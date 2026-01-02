---
title: Backend
permalink: /categories/backend/
---

{% assign posts = site.categories.backend %}
{% for post in posts %}
- {{ post.date | date: "%Y-%m-%d" }}
  [{{ post.title }}]({{ post.url | relative_url }})
{% endfor %}

