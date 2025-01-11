#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
git add .
git commit -m "local-revision-$(git rev-list HEAD --count)"
home-manager switch --flake ./#$USER -b backup || nix run home-manager/master -- switch --flake ./#$USER -b backup
git checkout local || git checkout -b local
git pull origin main\:main --ff-only --no-edit
git merge main -s ort --no-edit
