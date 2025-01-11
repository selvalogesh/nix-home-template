#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
read -p "Enter commit message (default: merge-<last-local-commit-message>): " commit_message
if [[ $commit_message == "" ]]; then
    commit_message="merge-$(git log --format=%B -n 1 local)"
fi
git fetch origin
git checkout main
git merge --squash local
git commit -m $commit_message