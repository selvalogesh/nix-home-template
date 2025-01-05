#!/usr/bin/env nix-shell
#!nix-shell -i bash -p bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
home-manager switch --flake ./#$USER
