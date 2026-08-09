---
title: "[LazyVim] blink.cmp 기본 키맵 커스텀 설정하기 (Tab 즉시 완성)"
date: 2026-08-10
categories: [devops-tools, vim]
tags: [lazyvim, blink.cmp]
---

LazyVim 키본 키맵 설정을 끄고 커스텀 설정을 한다.  
자동완성 추천 코드가 떴을때 Enter가 아닌 Tab을 통해 선택하도록 설정한다.

---

## 설정 방법
경로: ~/.config/nvim/lua/plugins/tab-completion.lua 파일에 아래 코드 입력 후 저장
```
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none", -- 기본 키맵을 끄고 커스텀합니다
        ["<Tab>"] = { "select_and_accept", "fallback" }, -- 탭 누르면 즉시 완성
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-space>"] = { "show", "show_documentation", "hide" },
      },
    },
  },
}
```

