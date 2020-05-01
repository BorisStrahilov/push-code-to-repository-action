#!/usr/bin/env sh
set -eu

git remote add mirror "https://$INPUT_REPOSITORY_USERNAME:$INPUT_REPOSITORY_PASSWORD@$INPUT_REPOSITORY_URL"

git fetch --all
git pull --all

git push --tags --force --prune mirror "refs/remotes/origin/*:refs/heads/*"