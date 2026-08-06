---
title: "[LazyVim] snippets 설정 방법"
date: 2026-08-06
categories: [devops-tools, vim]
tags: [lazyvim, snippets]
---

LazyVim에서 snippets(커스텀 단축어) 설정 방법에 대해 알아본다.

---

## Snippets이란?
snippets는 코딩용 '단축어 설정(상용구)'이라고 이해하면 된다.  
자주 쓰는 길고 복잡한 코드 뭉치를 짧은 키워드로 등록해 두고  
키워드를 입력한 뒤 탭(Tab)이나 엔터를 누르면 코드가 통째로 완성되는 기능이다.

## 대표적인 스니펫(Snippets) 예시
- fn 입력 후 확장 => function name() {} (자바스크립트 함수 정의)
- iferr 입력 후 확장 => Go 언어의 귀찮은 에러 체크 문장(if err != nil { ... })이 통째로 완성
- main 입력 후 확장 => C, Java, Python 등 각 언어의 메인 함수 뼈대가 한 번에 완성

## 스니펫의 핵심
플레이스홀더(Placeholder) 스니펫이 단순 텍스트 대치보다 강력한 이유는  
코드가 완성된 후 커서의 위치를 제어할 수 있기 때문이다.

## LazyVim에서 Snippets 설정 방법
python 코딩중 디버깅을 위해 pprint 라이브러리를 세팅하는 방법  
```
# ~/.config/nvim/snippets/python.json
{
  "pprint import and call": {
    "prefix": "pp",
    "body": [
      "from pprint import pprint",
      "pprint($1)",
      "return"
    ],
    "description": "from pprint import pprint and call pprint with cursor"
  }
}
```
위 코드를 저장하고 python 파일에서 'pp' 입력 후 tab을 누르면 body에 설정한  
코드가 자동으로 완성되고 커서는 $1에 위치하게되어 코드 입력이 수월해진다.
