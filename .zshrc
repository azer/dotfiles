ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh


#zstyle ':completion:*:*:git:*' script ~/dotfiles/git-completion.zsh
PS1="  %{$fg[white]%}λ%{$reset_color%}  "

unsetopt correct_all

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:$PATH
export GOPATH=$HOME/code/golang
export PATH=$PATH:$GOPATH/bin:$HOME/.yarn/bin
#export PATH=$PATH:~/code/AndroidSDK/tools
#export PATH=$PATH:~/code/AndroidSDK/platform-tools

#export ANDROID_HOME=/home/azer/code/AndroidSDK
#export ANDROID_AVD_HOME=/home/azer/.android/avd
#export ANDROID_SDK_ROOT=/home/azer/code/AndroidSDK
#export ANDROID_SDK_ROOT=/home/azer/.android

export PATH=~/localbin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_MESSAGES="C"
export EDITOR=vi
export TERM=rxvt-unicode

# ALIASES
alias ls='exa -l --color=always --color-scale'
alias today="date '+%d%h%y'"
alias mess='clear ; tail -f /var/log/messages'
alias vi='vim'
alias c='clear; pwd'
alias serve='python -c "import SimpleHTTPServer; m = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map; m[\"\"] = \"text/plain\"; m.update(dict([(k, v + \";charset=UTF-8\") for k, v in m.items()])); SimpleHTTPServer.test();"'
alias links='grep http | grep -shoP "http[^?\" >)#]+"'

# FUNCTIONS
calc(){ awk "BEGIN{ print $* }" ;}


TZ='Asia/Makassar'; export TZ

source ~/localbin/bashmarks/bashmarks.sh

export NVM_DIR="/home/azer/.nvm"pp
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
