---
title: "regexpengine 설정"
date: 2026-01-20
categories: [devops-tools, vim]
tags: [vim, regexpengine]
---

syntax on 설정 때문에 .tsx 파일에서 오류가 발생하여 문제 해결을 위한 설정  
오류: 파일을 열었을때 파일이 멈추거나 구문강조가 사라지거나 글로딩이 느려지는 현상

---

## regexengine(정규 표현식 엔진)
텍스트 안에서 특정 패턴을 찾아내는 검색 기계이다.  

Vim에서 re=2로 설정하는 이유는, 복잡한 TSX 파일 등을 처리할 때 구형 엔진(1번)이  
길을 잃고 헤매는 것을 방지하고 빠르고 효율적인 기계(2번 NFA 엔진)를 강제로 쓰게 하려는 것입니다.

---

## regexengine 설정 값
- 0 (자동): Vim이 패턴에 따라 엔진을 자동 선택 (기본값)  
- 1 (Old): Backtracking 방식. 복잡한 정규식에서 매우 느려지며, TSX 같은 구조에서 "redrawtime exceeded" 오류를 유발하는 주범.
- 2 (NFA): 수치 자동 제어(NFA) 방식. 복잡한 패턴도 일정한 속도로 처리하여 성능이 훨씬 안정적이고 빠르다.

---

## 실제 사용 예시
```
# vi ~/.vimrc
set regexengine=2 # set re=2로 사용 가능
```
