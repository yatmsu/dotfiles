export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

autoload -U compinit
compinit
export LANG=ja_JP.UTF-8

PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

alias ll="ls -alG"
alias be="bundle exec"
alias r="bundle exec rails"
