
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/go-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/go-completion.bash
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export EDITOR=vim
export DOTBASHMY=~/.bash.my
source $DOTBASHMY/aliases
source $DOTBASHMY/cucumber
#source $DOTBASHMY/git-nav
source $DOTBASHMY/git-aware-prompt/colors.sh
source $DOTBASHMY/git-aware-prompt/prompt.sh
export PS1="\$(~/.rvm/bin/rvm-prompt v g) \u@\h \w\[$txtcyn\]\$git_branch\[$txtrst\]\$ "

export HISTFILESIZE=2000
export HISTSIZE=2000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT='%F %T '

# setup direnv
eval "$(direnv hook bash)"

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

#[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
#if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
#  export GPG_AGENT_INFO
#else
#  eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
#fi
export PATH="/usr/local/opt/mariadb@10.0/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/qrasio/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/qrasio/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/qrasio/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/qrasio/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
