#!/usr/bin/env bash
set -euo pipefail

# Install Zenith CLI (terminal-based graphical system monitor)
echo "📦 Installing Zenith CLI..."
if command -v pacman &>/dev/null; then
    sudo pacman -S --needed --noconfirm zenith
    echo "✅ Zenith CLI installed successfully. Run it using 'zenith'."
else
    echo "❌ Pacman not found. Please install zenith via your package manager."
    exit 1
fi
