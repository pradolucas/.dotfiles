#!/usr/bin/env bash

# ln -sfn ~/dotfiles/scripts/.gitconfig ~/.gitconfig
# ln -sfn ~/dotfiles/scripts/.zshrc ~/.zshrc
# ln -sfn ~/dotfiles/scripts/neovim.vim ~/.config/nvim/init.vim
# ln -sfn ~/dotfiles/scripts/lua ~/.config/nvim/lua
# ln -sfn ~/dotfiles/scripts/.tmux.conf ~/.tmux.conf

xargs sudo apt-get install <packages.txt
# chsh -s $(which zsh)
mv ~/.config/nvim ~/.config/NVIM.BAK
rm -rf "$HOME/.zinit"
rm -rf "$HOME/.oh-my-zsh"

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ./scripts/oh-my-zsh-install.sh
rm .zshrc

echo '[*] Stowing'
stow -vSt ~ zsh tmux nvim

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir --parents /home/$USER/.local/bin/; mv nvim.appimage $_

echo "Finished! Reload your terminal to use the latest setup."
