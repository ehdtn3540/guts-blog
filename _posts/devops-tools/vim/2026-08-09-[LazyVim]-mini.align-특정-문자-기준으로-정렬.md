---
title: "[LazyVim] mini.align 특정 문자 기준으로 정렬"
date: 2026-08-09
categories: [devops-tools, vim]
tags: [lazyvim, mini.align]
---

LazyVim에서 mini.align 플러그인을 설치하고 사용하는 방법에 대해 알아본다.

---

## mini.align이란?
특정 문자를 기준으로 코드를 정렬할수 있게 도와주는 플러그인이다. 

## 설치 방법
```
# ~/.config/nvim/lua/plugins/align.lua 파일에 아래 코드 입력 후 저장
return {
  -- mini.align 플러그인을 LazyVim에 정식 등록하고 기본 세팅으로 켭니다.
  { "echasnovski/mini.align", opts = {} }
}
```

## 사용 방법
사용 방법
```
# 정렬하고 싶은 코드 블록을 비주얼 모드(shift+v)로 블록 지정 후 아래 단축키 입력
g a = Enter # '='을 기준으로 정렬
g a # Enter # '#'을 기준으로 정렬
```

사용 결과
```
# 사용 전
is_color = Column(String, nullable=True)
is_pinned = Column(Boolean, nullable=True, default=False)
is_archived = Column(Boolean, nullable=True, default=False)
is_trashed = Column(Boolean, nullable=True, default=False)

# 사용 후
is_color    = Column(String, nullable  = True)
is_pinned   = Column(Boolean, nullable = True, default = False)
is_archived = Column(Boolean, nullable = True, default = False)
is_trashed  = Column(Boolean, nullable = True, default = False)
```
