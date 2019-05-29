export ZSH=/Users/benwaters/.oh-my-zsh
ZSH_THEME="simple"
export UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
plugins=(git aws ssh-agent docker ansible history node npm osx pip sudo tmux vault gpg-agent z rbenv vscode python iterm2 golang docker-compose command-not-found zsh_reload )
zstyle :omz:plugins:ssh-agent lifetime 10h
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
fi
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export EDITOR=/usr/bin/vim
autoload -U +X bashcompinit && bashcompinit
autoload -U compinit && compinit
complete -o nospace -C /usr/local/bin/vault vault
export PIP_IGNORE_INSTALLED=1
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export WORKON_HOME=~/.venvs/
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin
USER_BASE_PATH2=$(python2 -m site --user-base)
USER_BASE_PATH3=$(python3 -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH3/bin:$USER_BASE_PATH2/bin
export GOPATH=$HOME/go
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
function otp {
  python3 -c "import pyotp,sys; print(pyotp.TOTP(sys.argv[1]).now())" $1
}
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
eval "$(rbenv init -)"
export CLICOLOR=1
export CLICOLOR_FORCE=1
export GO111MODULE=off
alias ls="gls --color=always"
