if type brew &>/dev/null; then
  for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
  then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi

export EDITOR=vim
export DOTBASHMY=~/.bash.my
source $DOTBASHMY/aliases
source $DOTBASHMY/cucumber
source $DOTBASHMY/git-aware-prompt/colors.sh
source $DOTBASHMY/git-aware-prompt/prompt.sh
# export PS1="\$(~/.rvm/bin/rvm-prompt v g) \u@\h \w\[$txtcyn\]\$git_branch\[$txtrst\]\$ "
export PS1="\u@\h \w\[$txtcyn\]\$git_branch\[$txtrst\]\$ "

export HISTFILESIZE=2000
export HISTSIZE=2000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT='%F %T '

source $(brew --prefix asdf)/asdf.sh

# set yarn binaries on path
# must be below the .asdf source commands ^
export PATH="$(yarn global bin):$PATH"

# setup direnv
# eval "$(direnv hook bash)"

export GOPATH=~/projects/go
export PATH=$PATH:$GOPATH/bin

PATH=/usr/local/bin:$PATH
export NO_PHANTOM_OUTPUT=1

export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# Erlang and Elixir
export ERL_AFLAGS="-kernel shell_history enabled"
export ELIXIR_EDITOR="echo __FILE__ +__LINE__"

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

