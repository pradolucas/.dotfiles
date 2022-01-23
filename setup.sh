# !/bin/bash

xargs sudo apt-get install <packages.txt
# chsh -s $(which zsh)
mv ~/.config/nvim ~/.config/NVIM.BAK
rm -rf "$HOME/.zinit"
rm -rf "$HOME/.oh-my-zsh"

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

echo '[*] Stowing'
stow -vSt ~ zsh tmux nvim

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir /home/$USER/.local/bin/ mv nvinstall.sh; mv nvim.appimage $_

echo "Finished! Reload your terminal to use the latest setup."
