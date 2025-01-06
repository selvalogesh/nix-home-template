#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
git checkout local 2>/dev/null || git checkout -b local
git pull origin main
git add .
git commit -m "temp-commit-revision-$(git rev-list HEAD --count)"
home-manager switch --flake ./#$USER
