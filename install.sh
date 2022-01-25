#!/usr/bin/env -S bash -x
set -e

mkdir -p "$HOME/.dotfiles"
git clone https://github.com/pradolucas/.dotfiles "$HOME/.dotfiles"
chmod +r+x "$HOME/.dotfiles/setup.sh"

echo "Installing"
cd "$HOME/.dotfiles" && bash setup.sh
