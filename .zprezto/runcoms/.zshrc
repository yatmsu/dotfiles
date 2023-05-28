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
alias restart-bt="blueutil --power 0 && blueutil --power 1"

# peco functions
function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

