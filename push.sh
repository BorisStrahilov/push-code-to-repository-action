#!/usr/bin/env sh
set -eu

git remote add mirror "https://$INPUT_REPOSITORY_USERNAME:$INPUT_REPOSITORY_PASSWORD@$INPUT_REPOSITORY_URL"
git fetch origin
git pull origin
git push --all mirror