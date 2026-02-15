#!/bin/bash
# ABOUTME: Script to create a new Jekyll blog post with front matter.
# ABOUTME: Prompts for a title and generates a dated post file in _posts/.

read -p "Post title: " title

if [ -z "$title" ]; then
  echo "Error: title is required"
  exit 1
fi

date_prefix=$(date +%Y-%m-%d)
timestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/\([0-9][0-9]\)$/:\1/')
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alnum:]' '-' | sed 's/^-//;s/-$//')

filename="_posts/${date_prefix}-${slug}.md"

if [ -f "$filename" ]; then
  echo "Error: $filename already exists"
  exit 1
fi

cat > "$filename" << EOF
---
title: '${title}'
date: '${timestamp}'
layout: post
---

EOF

echo "Created $filename"
