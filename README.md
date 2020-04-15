# README

A GitHub Action for mirroring a repository to another repository using the default branch.

This will copy all commits, branches and tags.

## Usage

You can use the basic workflow below as a starting point. This workflow will push your default branch to the defined repository. You can customize this workflow to suit your needs.

```yaml
name: Transfer code to Different Repo

# Trigger the workflow on push or delete
on: [push, delete]

jobs:
  to_different_repo:
    # Specifies to run on latest Ubuntu GitHub-hosted runner
    runs-on: ubuntu-latest
    steps:
    # This is an action defined by GitHub that is on the GitHub Marketplace
    - uses: actions/checkout@v2
    # This is a the custom action that you will create
    - uses: BorisStrahilov/push-code-to-repository-action@v1
      with:
        # The target repository to transfer the code to
        target_repo_url:
          git@<target-repo>.git
        # The private key of a user with ssh access to the other repo
        ssh_private_key:                                
          ${{ secrets.DIFFERENT_REPO_SSH_PRIVATE_KEY }}
        # The login name that git will use to ssh into the other repo 
        # This is optional as the default is "git"
        ssh_username:
          ${{ secrets.DIFFERENT_REPO_SSH_USERNAME }}