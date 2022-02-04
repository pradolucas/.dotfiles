#!/bin/bash

xargs sudo apt install -y <scripts/packages.txt

rm -rf "$HOME/.zinit"
rm -rf "$HOME/.oh-my-zsh"

# ohmyzsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSLhttps://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash 
rm ~/.zshrc

## ZSH & spaceship
echo '[*] Stowing'
stow -vSt ~ zsh

ZSH_CUSTOM="/home/lodarp/.oh-my-zsh/custom/"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# NVIM & ~NV CHAD~
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir --parents /home/$USER/.local/bin/; mv nvim.appimage $_

# Tmux 
mv tmux/.tmux.conf tmux/.tmux.conf.BAK
git clone https://github.com/gpakosz/.tmux.git
ln -f .tmux/.tmux.conf tmux/
stow -vSt ~ tmux

# Nvim
mv ~/.config/nvim ~/.config/NVIM.BAK
git clone https://github.com/NvChad/NvChad ~/.config/nvim/
# mv nvim/.config/lua/custom ~/.config/nvim/lua/
stow -vSt ~ nvim
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

echo "Finished! Reload your terminal to use the latest setup."
