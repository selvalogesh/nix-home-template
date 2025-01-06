#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
last_commit_message=$(git log -1 --pretty=%B | head -n 11)
if [[ $last_commit_message != "temp-commit" ]]; then
    git push
fi