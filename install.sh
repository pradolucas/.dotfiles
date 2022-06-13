#!/usr/bin/env -S bash -x
set -e

apt update -y
apt upgrade -y
apt install git
mkdir -p "$1/.dotfiles"
git clone https://github.com/pradolucas/.dotfiles --branch master "$1/.dotfiles"
chmod +r+x "$1/.dotfiles/setup.sh"

echo "Installing"
cd "$1/.dotfiles" && bash setup.sh
