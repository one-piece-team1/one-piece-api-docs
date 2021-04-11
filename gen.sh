#!/bin/bash

set -x

echo "\033[34m[Generate] Generate API $1 Documents \033[0m"
docgen build -i  $(pwd)/apis/API-$1.json -o $(pwd)/index.html
if [[ "$?" == 1 ]]; then
    echo "\033[31m\xE2\x9C\x96 Generate API $1 Documents fail, abort docs\033[0m"
    exit 1
fi
echo "\033[32m\xE2\x9C\x94 Generate API $1 Documents Pass \033[0m"