#!/bin/sh

find $1 -maxdepth 99 -type d -path "*/.git" -exec \
  git  --git-dir=$PWD/{} --no-pager log --pretty=format:"{} %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --branches --not --remotes \;
