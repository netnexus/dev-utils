#!/bin/sh

find $@ -maxdepth 99 -type d -path "*/.git" -exec \
  git  --git-dir={} --no-pager log --pretty=format:"{} %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --branches --not --remotes \;
