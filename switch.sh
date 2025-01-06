#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
switch = "!f() { git checkout $1 2>/dev/null || git checkout -b $1; }; f"
git switch local
git add .
commit_count=$(git rev-list HEAD --count)
git commit -m "temp-commit-revision-$(commit_count)"
home-manager switch --flake ./#$USER
