# Path to your oh-my-zsh installation.
export ZSH=$HOME"/.oh-my-zsh"

# Theme 
ZSH_THEME='spaceship'
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  conda         # conda virtualenv section
  ##line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
##SPACESHIP_CHAR_SYMBOL="❯αγεζηΘλξπσφΩ "
SPACESHIP_CHAR_SYMBOL="ζ"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_USER_COLOR="135"

source $ZSH/oh-my-zsh.sh

plugins=(
  git 
)

[ -f ~/.dotfiles/scripts/plugins.zsh ] && source ~/.dotfiles/scripts/plugins.zsh
[ -f ~/.dotfiles/scripts/environment_variables.zsh ] && source ~/.dotfiles/scripts/environment_variables.zsh
[ -f ~/.dotfiles/scripts/alias_expansion.zsh ] && source ~/.dotfiles/scripts/alias_expansion.zsh
[ -f ~/.dotfiles/scripts/alias_commands.zsh ] && source ~/.dotfiles/scripts/alias_commands.zsh

# VER ASDF
# [ -f $(brew --prefix asdf)/libexec/asdf.sh ] && source $(brew --prefix asdf)/libexec/asdf.sh
# [ -f ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh

[ -f ~/.local_settings.zsh ] && source ~/.local_settings.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='lvim'
else
  export EDITOR='nvim'
fi

# Better colors man pag
export PAGER="most"
