#!/usr/bin/env sh
set -eu

git fetch origin
git pull origin
git remote add mirror "https://$INPUT_REPOSITORY_USERNAME:$INPUT_REPOSITORY_PASSWORD@$INPUT_REPOSITORY_URL"
git fetch mirror
git pull mirror
git push --all mirror