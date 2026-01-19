---
title: "git status 한글깨짐 문제"
date: 2026-01-02
categories: [devops-tools, github]
tags: [Git, GitHub]
---

Git 명령어중 git status 사용시 수정된 파일명이 한글일 경우 깨져보이는 현상 발생  
해결 방법은 다음과 같다
```
git config --global core.quotepath false
```
