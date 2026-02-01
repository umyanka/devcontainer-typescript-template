#!/bin/bash

set -euo pipefail

# aqua
echo "Installing aqua packages..."
aqua install --all

# pnpm
echo "Installing pnpm packages..."
pnpm install --frozen-lockfile

# # claude
# if [ ! $(which claude) ]; then
#   echo "Installing Claude Code..."
#   curl -fsSL https://claude.ai/install.sh | bash
# fi
