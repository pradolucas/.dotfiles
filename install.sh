#!/usr/bin/env -S bash -x
set -e

sudo apt update -y
sudo apt upgrade -y
sudo apt install git
mkdir -p "$HOME/.dotfiles"
git clone https://github.com/pradolucas/.dotfiles --branch automatic "$HOME/.dotfiles"
chmod +r+x "$HOME/.dotfiles/setup.sh"

echo "Installing"
cd "$HOME/.dotfiles" && bash setup.sh
