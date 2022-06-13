#!/usr/bin/env -S bash -x
set -e

#apt update -y
#apt upgrade -y
apt install git
mkdir -p "$HOME/.dotfiles"
git clone https://github.com/pradolucas/.dotfiles --branch master "$HOME/.dotfiles"
chmod +r+x "$HOME/.dotfiles/setup.sh"

echo "Installing"
cd "$HOME/.dotfiles" && bash setup.sh
