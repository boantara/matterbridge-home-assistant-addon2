#!/bin/bash

# Define the base directory for Matterbridge
HOME_DIR=/addons/matterbridge

# Read addon options from /data/options.json (written by Supervisor)
# If a key is missing, fall back to defaults.
FRONTEND_BIND="$(node -p "try{require('/data/options.json').frontend_bind ?? '0.0.0.0'}catch(e){'0.0.0.0'}")"
BRANCH="$(node -p "try{require('/data/options.json').branch ?? 'main'}catch(e){'main'}")"

# Define the subdirectories for Matterbridge
MATTERBRIDGE_PLUGINS=$HOME_DIR/Matterbridge   # For matterbridge plugins
MATTERBRIDGE_STORAGE=$HOME_DIR/.matterbridge  # For matterbridge storage
MATTERBRIDGE_CERT=$HOME_DIR/.mattercert       # For matterbridge certification

# Welcome message
echo " "
echo " "
echo "Welcome to the Matterbridge Home Assistant Add-on"
echo " "
DISTRO=$(awk -F= '/^PRETTY_NAME=/{gsub(/"/, "", $2); print $2}' /etc/os-release)
CODENAME=$(awk -F= '/^VERSION_CODENAME=/{print $2}' /etc/os-release)
echo "🖥️ Distro: $DISTRO ($CODENAME)"
echo "🧱 Architecture: $(uname -m)"
echo "🧩 Kernel Version: $(uname -r)"
echo "🟢 Node.js version: $(node -v)"
echo "🟣 Npm version: $(npm -v)"
echo "👤 Hostname: $(hostname)"
echo "👤 User: $(whoami)"
echo "📅 Date: $(date)"
echo " "

# Create directories if they don't exist
echo "Creating matterbridge directories..."
mkdir -p $HOME_DIR
mkdir -p $MATTERBRIDGE_PLUGINS
mkdir -p $MATTERBRIDGE_STORAGE
mkdir -p $MATTERBRIDGE_CERT

# Install Matterbridge based on selected branch
case "$BRANCH" in
  dev)
    echo "Branch = dev → installing matterbridge@dev from npm..."
    echo "This can take up to 3 minute on a Home Assistant Green..."
    npm install matterbridge@dev --no-fund --no-audit --global --omit=dev
    ;;
  main|*)
    echo "Branch = main → installing matterbridge@latest from npm..."
    echo "This can take up to 3 minute on a Home Assistant Green..."
    npm install matterbridge --no-fund --no-audit --global --omit=dev
    ;;
esac

# Base args
ARGS="--docker --homedir $HOME_DIR"

# Add frontend bind
if [ -n "$FRONTEND_BIND" ]; then
  ARGS="$ARGS --bind $FRONTEND_BIND"
fi

# Start Matterbridge in a loop to handle restarts internally in the same container
while true; do
    echo "Starting Matterbridge with args: $ARGS"
    matterbridge $ARGS
    echo "Matterbridge process exited. Restarting in 2 seconds..."
    sleep 2
done
