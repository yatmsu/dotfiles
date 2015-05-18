## completion
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd # pushd
setopt correct
setopt list_packed
setopt nolistbeep

# key bind
bindkey -e

## Environment
export LANG="ja_JP.UTF-8"
# bundler editor
export BUNDLER_EDITOR=vim
# rbenv init
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - zsh)"
# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_all_dups
setopt share_history    # share command history data
setopt hist_ignore_space
setopt hist_reduce_blanks

## prompt
PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

## alias
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
alias h="history 0"
alias be="bundle exec"
alias bi="bundle install"
alias r="bin/rails"

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
