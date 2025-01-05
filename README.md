# Getting started

```sh
nix shell nixpkgs#home-manager nixpkgs#git --command sh -c " \
    git clone https://github.com/selvalogesh/nix-home-template.git --depth=1 \
    && cd ./nix-home-template \
    && ./switch.sh \
"
```
