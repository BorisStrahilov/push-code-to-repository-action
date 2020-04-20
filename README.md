# README

A GitHub Action for mirroring a repository to another repository using the default branch.

This will copy all commits, branches and tags.

## Usage

You can use the basic workflow below as a starting point. This workflow will push your default branch to the defined repository. You can customize this workflow to suit your needs.

```yaml
name: Transfer code to Different Repo

on: [push, delete]

jobs:
  to_different_repo:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: BorisStrahilov/push-code-to-repository-action@v2
      with:
        repository_url: github.com/myUsername/myRepositoy
        repository_username: ${{ secrets.MIRROR_REPOSITORY_USERNAME }}
        repository_password: ${{ secrets.MIRROR_REPOSITORY_PASSWORD }}