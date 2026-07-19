---
title: "[Neovim] LazyVim 배포판으로 편리한 Vim 환경 만들기"
date: 2026-07-19
categories: [devops-tools, vim]
tags: [neovim, lazyvim]
---

Neovim과 LazyVim를 설치하여 파일탐색, 코드자동완성, 네비게이션, 파일상태 등  
유용한 플러그인을 한번에 설치한다.

LazyVim은 VScode 환경을 기반으로 만들어진 배포판이다.

---

## 1단계: 폰트 설치
LazyVim은 VS Code처럼 화면에 예쁜 아이콘(폴더 모양, Git 아이콘 등)을 많이 사용한다.  
일반 폰트를 쓰면 깨지기 때문에, 아이콘이 포함된 Nerd Font를 반드시 설치해야 한다.

1. JetBrainsMono Nerd Font 다운로드
```
brew install --cask font-jetbrains-mono-nerd-font
```
2. iTerm2 설정 변경: iTerm2를 켜신 상태에서 자판의 Cmd + , (설정창)을 누른다.
3. Profiles -> Text 탭으로 이동한다.
4. 하단의 Font 항목에서 방금 설치한 JetBrainsMono Nerd Font로 변경해 준다.

## 2단계: 필수 도구 및 Neovim 설치
LazyVim이 내부적으로 파일 검색이나 코드 분석을 할 때 사용하는 핵심 도구들과 Neovim 엔진을 설치한다.
```
brew install neovim git ripgrep fd fzf make coreutils node python3
```

## 3단계: LazyVim 설치 (설정 파일 복사)
오리지널 Vim이나 기존 Neovim 설정과 엉키지 않도록 기존 폴더를 백업하고,
LazyVim 공식 스타터 팩을 다운로드한다. 
```
# 만약 기존에 nvim을 쓴 적이 있다면 백업하는 과정
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null
mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null

# LazyVim 공식 템플릿을 내 컴퓨터 설정 폴더로 복제
git clone https://github.com/LazyVim/starter ~/.config/nvim

# 이제 필요 없는 git 이력을 지워 나만의 독립된 설정으로 만듦
rm -rf ~/.config/nvim/.git
```

## 4단계: 실행 및 자동 설치
이제 터미널에 아래 명령어를 쳐서 Neovim을 실행
```
nvim
```
첫 실행 시 화면 하단에 수많은 플러그인이 자동으로 다운로드되는 창이 뜬다. 
약 1~2분 정도 가만히 기다리시면 설치가 완료되며 설치가 끝나면 q를 눌러 설치 창을 닫아준다.

## 5단계: vi나 vim을 쳤을 때 nvim이 켜지게 하기
매번 nvim이라고 길게 치기 귀찮고, 손에 익은 vi나 vim을 쳤을 때도 
최신 LazyVim이 켜지게 하려면 zsh 설정에 별명(alias)을 등록하면 편리하다.
```
echo 'alias vi="nvim"' >> ~/.zshrc
echo 'alias vim="nvim"' >> ~/.zshrc
source ~/.zshrc
```

