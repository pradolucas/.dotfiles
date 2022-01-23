plugins=(
  git
  fzf
  ripgrep
  dotenv
  tmux
)

# checar zinit
# [ -f ~/dotfiles/scripts/plugins.zsh ] && source ~/dotfiles/scripts/plugins.zsh

[ -f ~/dotfiles/scripts/environment_variables.zsh ] && source ~/dotfiles/scripts/environment_variables.zsh
[ -f ~/dotfiles/scripts/alias_expansion.zsh ] && source ~/dotfiles/scripts/alias_expansion.zsh
[ -f ~/dotfiles/scripts/alias_commands.zsh ] && source ~/dotfiles/scripts/alias_commands.zsh

# VER ASDF
# [ -f $(brew --prefix asdf)/libexec/asdf.sh ] && source $(brew --prefix asdf)/libexec/asdf.sh
# [ -f ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh

[ -f ~/.local_settings.zsh ] && source ~/.local_settings.zsh

# eval "$(starship init zsh)"

autoload -Uz compinit && compinit
