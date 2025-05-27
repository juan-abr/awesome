#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "alacritty" -e tmux new-session "btm --battery"
