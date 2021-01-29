#!/usr/bin/env bash

CURRENT_BRANCH=`git rev-parse --abbrev-ref @`

if [ $CURRENT_BRANCH = "main" ]; then
  cd workflow
  td wf check
  td -e $TD_API_SERVER -k $TD_API_KEY wf push mydag
fi