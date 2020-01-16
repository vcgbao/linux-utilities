#!/bin/bash

kill_process() {
  if [ -z "$1" ]
  then
    echo "EMPTY PROCESS NAME!!!!!"
    return
  fi
  ps aux | grep "$USER" | grep -i "$1" | awk '{print $2}' | xargs kill -9
}

usage() {
  echo 'Usage:'
  echo 'baovo kill [process name]'
}


case $1 in
kill | k)
  kill_process "$2"
  ;;
*)
  usage
  ;;
esac