#!/usr/bin/env bash

function custom_prompt()
{
  if [ -d .terraform ]; then
    workspace="$(command terraform workspace show 2>/dev/null)"
    printf "\ntfws  : ${workspace}"
  fi
  if [ -d .git ]; then
    branch="$(command git branch 2>/dev/null | grep "^*" | colrm 1 2)"
    printf "\nbranch: ${branch}"
  fi
}
