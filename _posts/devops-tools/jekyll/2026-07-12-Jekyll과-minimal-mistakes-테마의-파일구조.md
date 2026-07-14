---
title: "Jekyll과 minimal mistakes 테마의 파일구조"
date: 2026-07-12
categories: [devops-tools, jekyll]
tags: [jekyll, theme, minimal mistakes]
---

Jekyll과 Minimal Mistakes 테마의 기본적인 파일구조에 대해 설명한다.
아래 프로젝트 파일구조는 현재 나의 프로젝트를 기반으로 설명한다.

---

## 파일 구조
```
.
├── _config.local.yml
├── _config.yml                  # 프로젝트의 전체 설정(예: 사이트 제목, 테마, 페이지 등) 
├── _data                        # 블로그에 사용되는 반복 데이터(예: 네비게이션 메뉴 등) 
│   └── navigation.yml
├── _pages                       # 페이지 자동생성 폴더
│   ├── categories
│   │   ├── backend
│   │   │   └── python.md
│   │   ├── computer-science-basic
│   │   ├── devops-tools
│   │   └── frontend
├── _posts                       # 블로그 글을 작성하는 폴더
│   ├── backend
│   │   ├── fastapi
│   │   │   └── 2026-02-15-FastAPI-설치.md
│   │   └── python
│   ├── computer-science-basic
│   ├── devops-tools
│   │   ├── docker
│   │   ├── etc
│   │   ├── github
│   │   ├── jekyll
│   │   └── vim
│   └── frontend
│       ├── javascript
│       ├── next.js
│       └── react
├── _site                        # Jekyll 자체에서 생성하는 폴더, 따로 건들 필요가 없다.     
│   ├── ...
├── 404.html
├── assets                       # 이미지, 스타일시트(CSS), 자바스크립트(JS) 폴더
│   └── css
├── Gemfile                      # Jekyll이 작동하기 위한 Ruby 패키지 목록
├── Gemfile.lock
├── index.md                     # 블로그 접속 시 처음 보여지는 메인 화면
├── scripts                      # Script 파일
│   └── new-post.sh
└── tags.md
```

