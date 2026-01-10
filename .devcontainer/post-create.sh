#!/bin/bash

set -euo pipefail

# aqua
echo "Installing aqua packages..."
aqua install --all

# pnpm
echo "Installing pnpm packages..."
pnpm install --frozen-lockfile

# # claude code
# echo "Installing Claude Code CLI..."
# npm install -g @anthropic-ai/claude-code
