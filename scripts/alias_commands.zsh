########## Aliases ##########
## alias: Expand with whitespace at the end
## balias: Expand without whitespace at the end
## ialias: Don't expand
#############################
alias template="source ~/.oh-my-zsh/templates/zshrc.zsh-template"

ialias edit="nvim ~/.local_settings.zsh"
ialias src="source ~/.zshrc"

# alias wd="source ~/dotfiles/scripts/tmux -d"
# alias wt="source ~/dotfiles/scripts/tmux -t"
# alias wr="source ~/dotfiles/scripts/tmux -relationshiptime"
# alias wes="source ~/dotfiles/scripts/tmux -engine-segmentation"
# alias segmentation="source ~/dotfiles/scripts/tmux -segmentation"
# alias malotes="source ~/dotfiles/scripts/tmux -malotes"
# alias staymap="source ~/dotfiles/scripts/tmux -staymap"

alias vs="code-insiders ."

# alias nvim='/home/lodarp/.local/bin/nvim.appimage'
alias vim="nvim"
alias vi="nvim"
alias v="lvim"
alias lv="lvim"


alias tm="tmux"
alias tma="tmux attach-session"
alias tmd="tmux detach"
alias tmn="tmux new-session"
alias tmls="tmux ls"
alias tmks="tmux kill-session"
alias tmksv="tmux kill-server"

# So brew
# alias ghpr="gh pr create -a lysandroc"

alias g="git"
alias gl="git log --graph --decorate --all"
alias gds="git diff --staged"
alias gd="git diff"
alias gf="git fetch --all --no-tags"
alias grm="git reset --hard origin/master"
alias gri="git rebase --i origin/master"
alias gc="git checkout"
alias gs="git status"
alias gp="git push"
alias gpf="git push --set-upstream origin \$(git symbolic-ref --short HEAD)"
alias ct="bat ~/.dotfiles/scripts/commit-types.txt"

ialias ls="exa --icons"
ialias la="exa -la --icons"
ialias ll="exa -ll --icons"
ialias cat="bat"
ialias tree="exa -a --tree --level=4 --long --ignore-glob=\"*.git*\""
# ialias ll="ls -lahFv --color"

# Commits staged and pushes in one go (e.g. gcps -m "another test passes")
gcps() {
  git commit "$@" && git push
}

# Commits all changes and pushes in one go (e.g. gacps -m "another test passes")
gwip() {
  git add -A && gcps
}

# Rebase and squash all commits on top of master (by default) or can supply another branch as first argument
gsq() {
  BRANCH=${1:-master}

  GIT_SEQUENCE_EDITOR='sed -i '' -e "2,\$s/pick/f/"' git rebase -i $BRANCH
}

# Rebase and squash current commit on top of previous commit
gsquash() {
  # We need to pass in the ref of commit that's before the previous commit due to how rebase works
  gsq $(git rev-parse @~2)
}

watch() {
  while true; 
  do 
    eval $@;
    sleep 300; 
  done;
}

bindkey -s '^[ ' '!!^M' 

bindkey -s '^P' 'source ~/dotfiles/scripts/tmux -openProject \n'
bindkey -s '^G' 'gcheckout \n'
