ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh


#zstyle ':completion:*:*:git:*' script ~/dotfiles/git-completion.zsh
PS1="%{$fg[white]%}λ%{$reset_color%}  "

unsetopt correct_all

export HOSTALIASES=~/.hosts
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:$PATH
export PATH=$HOME/localbin:$PATH
export GOPATH=$HOME/Projects/golang
export PATH=$PATH:$GOPATH/bin:$HOME/.yarn/bin
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin
export PATH=$PATH:$HOME/.happy-desktop/bin
export XAUTHORITY=/home/azer/.Xauthority


export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_MESSAGES="C"
export EDITOR=vi

# ALIASES
alias ls='lsd -l1 --date=relative'
alias today="date '+%d%h%y'"
alias mess='clear ; tail -f /var/log/messages'
alias c='clear; pwd'
#alias serve='python -c "import SimpleHTTPServer; m = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map; m[\"\"] = \"text/plain\"; m.update(dict([(k, v + \";charset=UTF-8\") for k, v in m.items()])); SimpleHTTPServer.test();"'
alias serve='python -m http.server'
#alias serve="goexec 'http.ListenAndServe(":8080", http.FileServer(http.Dir(".")))'"
alias links='grep http | grep -shoP "http[^?\" >)#]+"'
alias push='git push origin `git rev-parse --abbrev-ref HEAD`'
alias pull='git pull origin `git rev-parse --abbrev-ref HEAD`'
alias commit-all='git add -u . && git commit -m'
alias ff="fzf --preview 'bat --color always {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-v:execute(vim {})+abort'"

# FUNCTIONS
calc(){ awk "BEGIN{ print $* }" ;}


source ~/localbin/bashmarks/bashmarks.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src)"


eval `fnm env`
#export NVM_DIR="/home/azer/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -f "/home/azer/.privaterc" ]] && source /home/azer/.privaterc

