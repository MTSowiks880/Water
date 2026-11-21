#!/usr/bin/env bash
set -e
T="$(mktemp -d)"
curl -fsSL -o "$T/water.flatpak" https://github.com/MTSowiks880/Water/releases/latest/download/water.flatpak
flatpak install --user -y "$T/water.flatpak" || echo "Déjà à jour."
echo "Lance : flatpak run io.github.MTSowiks880.Water"
