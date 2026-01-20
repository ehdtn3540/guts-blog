---
title: "bling/botvim: vim 설정 묶음"
date: 2026-01-20
categories: [devops-tools, etc]
tags: [vim, bling/botvim, bling, botvim]
---

bling/dotvim은 Vim 설정을 한 번에 잘 정리해둔 “프리셋(dotfiles) 저장소”이다.  
즉, Vim을 처음부터 하나하나 세팅하기 귀찮을 때 가져다 쓰는 개발자용 Vim 환경 묶음이다.  

GitHub에 공개된 Vim 설정 리포지토리  
.vimrc, 플러그인 설정, 키맵, 테마 등이 미리 구성됨
git clone 해서 심볼릭 링크만 걸면 바로 사용 가능  

---

## 기본 기능
- 자동 들여쓰기, 탭/스페이스 설정
- 줄 번호 표시
- 상대 줄 번호
- 검색 하이라이트
- 한글/영문 입력 환경 고려한 키 세팅

---


## 파일 탐색
- NERDTree  
좌측 파일 트리  
IDE의 파일 브라우저 역할  

---

## 코드 탐색 & 생산성
- ctrlp / fzf  
파일 빠른 검색  
- tagbar  
함수/클래스 구조 보기  
- surround  
괄호/따옴표 빠른 수정  
- commentary  
주석 토글  

---

## 문법 강조 & 색상
- 언어별 syntax highlight  
- 컬러스킴 포함 (다크 테마 위주)  

---

## Git 연동
- fugitive  
- Vim 안에서 git status, blame, diff  

---

## 사이트
[bling/botvim GitHub](https://github.com/bling/dotvim)
