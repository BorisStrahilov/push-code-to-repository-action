#!/usr/bin/env sh
set -eu

git remote add mirror "https://$INPUT_REPOSITORY_USERNAME:$INPUT_REPOSITORY_PASSWORD@$INPUT_REPOSITORY_URL"
git push --tags --force mirror "refs/remotes/origin/*:refs/heads/*"