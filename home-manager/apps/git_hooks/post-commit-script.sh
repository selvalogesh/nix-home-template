#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [[ $current_branch != "local" ]]; then
    git push
fi