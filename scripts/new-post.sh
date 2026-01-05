#!/bin/bash

# post 기본 템플릿 파일 생성을 위한 자동 스크립트 입니다.
# root 경로에서 sh ./scripts/new-post.sh "포스트 제목" 명령어를 입력하여 사용

TITLE="$1"
DATE=$(date +%Y-%m-%d)
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

FILE="_posts/${DATE}-${SLUG}.md"

cat <<EOF > $FILE
---
title: "$TITLE"
date: $DATE
categories: []
tags: []
---

EOF

echo "Created: $FILE"

