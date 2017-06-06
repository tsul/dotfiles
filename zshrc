export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='vim'

[[ -f ~/.zprezto/init.zsh ]] && source ~/.zprezto/init.zsh

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$(yarn global bin):$PATH

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

alias dev='cd ~/Development'
alias src='source ~/.zshrc'
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vimrc'
alias ll='/usr/local/bin/grc /usr/local/opt/coreutils/libexec/gnubin/ls --color -l'

function rtm() {
  git checkout origin/master -- $1
}

function ytmp3() {
  youtube-dl --extract-audio --audio-format mp3 $1
}

function cnl() {
  perl -pi -e 'chomp if eof' $1
}
