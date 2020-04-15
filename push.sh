#!/usr/bin/env sh
set -eu

/setup-ssh.sh

export GIT_SSH_COMMAND="ssh -v -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -l $INPUT_SSH_USERNAME"
git remote add destination "$INPUT_TARGET_REPO_URL"
git push --tags --force --prune destination "refs/remotes/origin/*:refs/heads/*"
