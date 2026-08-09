---
title: "[LazyVim] im-select, Esc키로 자동 영문 전환 설정"
date: 2026-08-10
categories: [devops-tools, vim]
tags: [lazyvim, im-select]
---

기존에 homebrew로 설치된 im-select 플러그인을 API 형식으로 불러와  
LazyVim에 설정 적용하는 방법을 알아본다.

---

## 설정 방법
경로: ~/.config/nvim/lua/config/autocmds.lua 파일에 아래 코드 입력 후 저장
```
-- im-select 자판 자동 전환 설정
local im_group = vim.api.nvim_create_augroup("ImSelectCustom", { clear = true })
local im_path = "/opt/homebrew/bin/im-select"
local im_layout = "com.apple.keylayout.ABC"

-- Insert 모드에서 나갈 때 영문 전환 (silent ! 와 동일하게 백그라운드 실행)
vim.api.nvim_create_autocmd("InsertLeave", {
  group = im_group,
  pattern = "*",
  command = "silent !" .. im_path .. " " .. im_layout,
})

-- Vim을 완전히 종료하고 나갈 때 영문 전환
vim.api.nvim_create_autocmd("VimLeave", {
  group = im_group,
  pattern = "*",
  command = "silent !" .. im_path .. " " .. im_layout,
})

```

