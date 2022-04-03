#!/bin/bash

echo = "Checking Files.."

progress_bar()
{
  local PROG_BAR_TODO=${3:-" "}
  local PROG_BAR_DONE=${4:-"#"}
  local i

  echo -en "["
  for i in `seq 1 60`
  do 
    echo -en "$PROG_BAR_TODO"
  done
  echo -en "\0015["
  for i in `seq 1 60`
  do
    echo -en "$PROG_BAR_DONE"
    sleep 0.1
  done 
  if [[ $i == 60 ]]; then
    ln -s -f .hooks/pre-commit .git/hooks/pre-commit
    git config core.hooksPath $(pwd)/.hooks
    sudo chmod +x $(pwd)/.hooks
  fi
  exit 1
}

while :
do
  progress_bar
done
