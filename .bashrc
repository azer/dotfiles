color_off='\e[0m'
black='\e[0;30m'
red='\e[0;31m'
green='\e[0;32m'
yellow='\e[0;33m'
blue='\e[0;34m'
purple='\e[0;35m'
cyan='\e[0;36m'
white='\e[0;37m'

#PS1="\[${yellow}\]\W\[${red}\]\$(__git_ps1) \[${green}\]> \[${color_off}\]"
PS1="\[${green}\]λ \[${color_off}\]  "

export TERM=rxvt-unicode
export PATH=$PATH:~/.node_modules/.bin
export PATH=$PATH:~/opt/leiningen
export PATH=$PATH:~/opt/neo4j/bin
export PATH=$PATH:/var/lib/gems/1.8/bin/
export BROWSER="delicious-surf"
export LANG=en_US.UTF-8
export LC_MESSAGES="C"

# ALIASES
alias ls='ls -aG'
alias rm='rm -v -i'
alias cp='cp -v -i'
alias mv='mv -v -i'
alias today="date '+%d%h%y'"
alias mess='clear ; tail -f /var/log/messages'

alias vi='vim'

# FUNCTIONS
calc(){ awk "BEGIN{ print $* }" ;}

# JAVA
export JAVA_HOME="/opt/java"
export NEO4J_HOME="$HOME/opt/neo4j"

# CLOJURE
export CLOJURE_EXT=~/.clojure
export PATH=$PATH:~/opt/clojure-contrib/launchers/bash
export PATH=$PATH:~/opt/leiningen
alias clj=clj-env-dir

# ANDROID
export PATH=$PATH:~/opt/android/tools
export PATH=$PATH:~/opt/android/platform-tools

TZ='US/Pacific'; export TZ
