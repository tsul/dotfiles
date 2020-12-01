export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='vim'

source ~/.env

[[ -f ~/.zprezto/init.zsh ]] && source ~/.zprezto/init.zsh

source /opt/homebrew/share/chruby/chruby.sh
source /opt/homebrew/share/chruby/auto.sh

export PATH=:$HOME/.cargo/bin:$HOME/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/bin:/usr/local/sbin:$(yarn global bin):$PATH
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/opt/openssl/lib

alias dev='cd ~/Development'
alias src='source ~/.zshrc'
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vimrc'
alias ll='/usr/local/bin/grc /usr/local/opt/coreutils/libexec/gnubin/ls --color -l'
alias update='brew upgrade && zprezto-update'
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias i='arch -x86_64'

function rtm() {
  git checkout origin/master -- $1
}

function ytmp3() {
  youtube-dl --extract-audio --audio-format mp3 $1
}

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function cheat() {
  curl cht.sh/$1
}
