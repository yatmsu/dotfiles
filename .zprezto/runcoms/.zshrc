#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "Meroje/zsh-rbenv"
zplug "sorin-ionescu/prezto"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Source Prezto.
[[ -f "$ZPLUG_REPOS/$_ZPLUG_PREZTO"/runcoms/zshrc ]] && source "$ZPLUG_REPOS/$_ZPLUG_PREZTO"/runcoms/zshrc

# History
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt hist_no_store
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt extended_history
setopt hist_verify

# aliases
case "${OSTYPE}" in
freebsd*|darwin*)
  alias ll="ls -alG"
  alias ls="ls -G -w"
  ;;
linux*)
  alias ll="ls -al --color"
  alias ls="ls --color"
  ;;
esac
alias h-all="history -n 0"
alias h="history 0"
alias restart-bt="blueutil --power 0 && blueutil --power 1"

# peco functions
function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# peco + ghq
function peco-src () {
  local selected_dir=$(ghq list -p | peco --prompt "❯" --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  #zle clear-screen
}
zle -N peco-src
bindkey '^g' peco-src

