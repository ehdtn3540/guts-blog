---
title: GitHub
permalink: /categories/github/
---

{% assign posts = site.categories.github %}
{% for post in posts %}
- {{ post.date | date: "%Y-%m-%d" }}
  [{{ post.title }}]({{ post.url | relative_url }})
{% endfor %}
