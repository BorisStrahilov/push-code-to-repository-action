#!/usr/bin/env sh
set -eu

git remote add mirror "https://$INPUT_REPOSITORY_USERNAME:$INPUT_REPOSITORY_PASSWORD@$INPUT_REPOSITORY_URL"

git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done; git fetch --all; git pull --all

git push --all mirror