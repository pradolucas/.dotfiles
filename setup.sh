#!/bin/bash

xargs apt install -y <scripts/packages.txt
xargs cargo install <scripts/cargo.txt

rm -rf "$HOME/.zinit"
rm -rf "$HOME/.oh-my-zsh"

stow -vSt ~ git

echo -e "\n\n Installing ohmyzsh..."
# ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# curl -fsSLhttps://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash 
rm ~/.zshrc

echo -e "\n\n Installing ZSH & spaceship theme..."
## ZSH & spaceship
echo '[*] Stowing'
stow -vSt ~ zsh

ZSH_CUSTOM="/home/lodarp/.oh-my-zsh/custom/"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo -e"\n\n Installing Tmux..."
# Tmux 
rm -rf .tmux
mv tmux/.tmux.conf tmux/.tmux.conf.BAK
git clone https://github.com/gpakosz/.tmux.git
ln -f .tmux/.tmux.conf tmux/
stow -vSt ~ tmux

echo -e"\n\n Installing nvim & LunarVim..."
# NVIM
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir --parents "$HOME/.local/bin/"; mv nvim.appimage $_

# Lunar Vim
rm -rf ~/NVIM.BAK
mv ~/.config/nvim ~/.config/NVIM.BAK
sh "$(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)"
# stow -vSt ~ nvim

echo "Finished! Reload your terminal to use the latest setup. Now, download the dracula theme and a Nerd font(Caskaydia)"
