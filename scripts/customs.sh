#!/usr/bin/env bash

function custom_prompt()
{
  TFWS=$(command terraform workspace show 2>/dev/null | grep "^*")
  if [ -n "$TFWS" ]; then
    printf "\ntfws  : ${TFWS}"
  fi
  BRANCH="$(command git branch 2>/dev/null | grep "^*" | colrm 1 2)"
  if [ -n "$BRANCH" ]; then
    printf "\nbranch: ${BRANCH}"
  fi
}
