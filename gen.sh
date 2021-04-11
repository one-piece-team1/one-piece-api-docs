#!/bin/bash

set -x

if [[ "$1" == 'api' || "$1" == "API" ]]; then
  echo "\033[34m[Generate] Generate API $2 Documents \033[0m"
  docgen build -i  $(pwd)/apis/json/API-$2.json -o $(pwd)/apis/docs/index.html
  if [[ "$?" == 1 ]]; then
      echo "\033[31m\xE2\x9C\x96 Generate API $2 Documents fail, abort docs\033[0m"
      exit 1
  fi
  echo "\033[32m\xE2\x9C\x94 Generate API $2 Documents Pass \033[0m"
fi