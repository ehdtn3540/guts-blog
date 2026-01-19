---
title: "jekyll minimal mistakes 테마 카테고리 페이지 자동 생성"
date: 2026-01-08
categories: [devops-tools, jekyll]
tags: [category, page, jekyll, nav, theme]
---

jekyll minimal mistakes 테마 사용시 좌측 사이드바(네비게이션바)에 카테고리 별 링크를 연결하고
카테고리 페이지를 자동으로 생성하는 방법을 설명한다.  
---

## 1. 네비게이션에 카테고리 페이지 링크 생성
경로: _data/navigation.yml
```
docs:                                    # 네비게이션 이름
  - title: Categories                    # 노출되는 타이틀
    url: /categories/                    # 연결될 페이지 url
    children:                            # 하위 카테고리
      - title: DevOps/Tools 
        url: /categories/devops\/tools/
      - title: └ GitHub
        url: /categories/github/
      - title: └ Jekyll
        url: /categories/jekyll/
```

## 2. 카테고리 페이지 자동 생성
경로: _pages/categories.md
```
---
title: Categories        # 카테고리 페이지 타이틀
layout: categories       # 모든 태그와 그에따른 글 목록을 보여주는 layout
permalink: /categories/  # 연결될 링크, _data/nvigation.yml에 url과 동일해야 함
---
```

경로: _pages/categories/devopstools.md
```
---
title: DevOps/Tools                      # 카테고리 페이지 타이틀
layout: category                         # taxonomy에 설정된 카테고리 글목록만 노출시킴
permalink: /categories/devops\/tools/    # 연결될 링크, _data/nvigation.yml에 url과 동일해야 함
taxonomy: devops\/tools                  # _posts/에 작성된 글의 Front Matter에 설정된 categories
---
```

## 3. post Front Matter 카테고리 설정하기
경로: _posts/*.md
```
---
title: "jekyll 포스트 템플릿 자동생성 스크립트"
date: 2026-01-07
categories: [devops\/tools, jekyll]               # taxonomy와 매칭되도록 설정
tags: [github pages, jekyll, script, post]
---
```

## 4. _config.yml 설정하기
경로: ./_config.yml

```
# _pages 추가하기
include:
  - _pages

# 서버 재시작
bundle exec jekyll serve
```

