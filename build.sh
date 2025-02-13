#!/bin/bash
# Set the shell and environment variables
export SHELL=/bin/bash
export PNPM_HOME="/opt/render/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
# Source the bashrc so the pnpm configuration is loaded
source /opt/render/.bashrc

# Enable corepack and set up pnpm
corepack enable
pnpm setup

# Install the required pnpm version globally
pnpm install -g pnpm@10.2.1

# Install dependencies and build your project
pnpm install --frozen-lockfile
pnpm run build
