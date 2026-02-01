#!/bin/bash

set -euo pipefail

docker volume create devcontainer-aqua-pkgs
docker volume create devcontainer-pnpm-global-store
docker volume create devcontainer-claude-binary

# git/github
touch ~/.gitconfig
mkdir -p ~/.config/gh

# # ssh
# mkdir -p ~/.ssh

# # claude
# mkdir -p ~/.claude
# touch ~/.claude.json

# # gemini
# mkdir -p ~/.gemini
