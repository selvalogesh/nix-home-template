# Getting started

```sh
nix shell nixpkgs#home-manager nixpkgs#git --command sh -c " \
    echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf \
    && exec $0 \
    && git clone https://github.com/selvalogesh/nix-home-template.git \
    && cd ./nix-home-template \
    && ./switch.sh \
"
```
