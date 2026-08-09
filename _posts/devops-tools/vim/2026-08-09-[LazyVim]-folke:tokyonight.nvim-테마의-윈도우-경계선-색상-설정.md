---
title: "[LazyVim] folke/tokyonight.nvim 테마의 윈도우 경계선 색상 설정"
date: 2026-08-09
categories: [devops-tools, vim]
tags: [lazyvim, folke/tokyonight.nvim]
---

LazyVim에서 tokyonight 테마 사용시 윈도우의 경계선이 잘 보이지 않는 경우가 있다.  
이때 설정을 통해 윈도우 경계선 색상을 변경하는 방법을 알아본다.

---

## 파일 경로 및 설정 방법
경로: ~/.config/nvim/lua/plugins/theme_override.lua 파일에 아래 코드 입력 후 저장
```
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon", -- 현재 사용 중인 moon 스타일 지정
      -- 테마가 로드될 때 경계선 스타일과 색상을 강제로 덮어씁니다.
      on_highlights = function(hl, c)
        -- 1. 경계선 색상을 밝은 하늘색(#7aa2f7)으로 변경하고 볼드 처리
        -- 만약 오렌지색을 원하시면 #ff9e64 로 변경하세요.
        hl.WinSeparator = {
          fg = "#7aa2f7", 
          bold = true,
        }
      end,
    },
    -- 테마가 켜진 후 선 모양(실선)을 한 번 더 강제로 주입합니다.
    config = function(_, opts)
      require("tokyonight").setup(opts)

      -- 얇은 실선 형태로 경계선 기호 강제 지정
      vim.opt.fillchars:append({
        horiz = "─",
        horizup = "┴",
        horizdown = "┬",
        vert = "│",
        vertleft = "┤",
        vertright = "├",
        verthoriz = "┼",
      })
    end,
  },
}
```
