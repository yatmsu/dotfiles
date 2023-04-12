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
alias dc="docker-compose"
alias restart-bt="blueutil --power 0 && blueutil --power 1"

