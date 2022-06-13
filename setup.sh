#!/bin/bash

xargs apt install -y <scripts/packages.txt

## Cargo packages
read -p "Install cargo packages? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  xargs cargo install <scripts/cargo.txt
fi

rm -rf "$HOME/.zinit"
rm -rf "$HOME/.oh-my-zsh"

stow -vSt $HOME git

# ohmyzsh
echo -e "\n\n Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# curl -fsSLhttps://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash 
rm "$HOME/.zshrc"

## ZSH & spaceship
echo -e "\n\n Installing ZSH & spaceship theme..."
echo '[*] Stowing'
stow -vSt $HOME zsh

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom/"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Tmux 
echo -e"\n\n Installing Tmux..."
rm -rf .tmux
mv tmux/.tmux.conf tmux/.tmux.conf.BAK
git clone https://github.com/gpakosz/.tmux.git
ln -f .tmux/.tmux.conf tmux/
stow -vSt $HOME tmux

# NVIM
echo -e"\n\n Installing nvim & LunarVim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir --parents "$HOME/.local/bin/"; mv nvim.appimage $_

# Lunar Vim
rm -rf "$HOME/NVIM.BAK"
mv ~/.config/nvim ~/.config/NVIM.BAK
sh "$(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)"
# stow -vSt ~ nvim

echo "Finished! Reload your terminal to use the latest setup. Now, download the dracula theme and a Nerd font(Caskaydia)"
