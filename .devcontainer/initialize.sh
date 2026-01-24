#!/bin/bash

set -euo pipefail

docker volume create aqua-pkgs
docker volume create pnpm-global-store

# git/github
touch ~/.gitconfig
mkdir -p ~/.config/gh

# # ssh
# mkdir -p ~/.ssh

# # claude code
# mkdir -p ~/.claude
# touch ~/.claude.json

# # gemini
# mkdir -p ~/.gemini
