# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
 DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"


alias go='cd ~/Sites/'
#alias go="cd ~/Sites/ && afplay ~/tmp/go.mp3"
alias ll="ls -laG"
alias ls="ls -G"
alias st="git status "
alias ci="git commit -am "
alias pl="git pull "
alias ph="git push "
alias tree="git log --graph --pretty=oneline --abbrev-commit --color"
alias alogs='tail -F /Applications/MAMP/logs/apache_error.log |while read -r line;do printf "\033[38;5;%dm%s\033[0m\n" $(($RANDOM%255)) "$line";done'
alias plogs='tail -F /Applications/MAMP/logs/php_error.log |while read -r line;do printf "\033[38;5;%dm%s\033[0m\n" $(($RANDOM%255)) "$line";done'
alias mlogs='tail -F /Applications/MAMP/logs/mysql_error_log.err |while read -r line;do printf "\033[38;5;%dm%s\033[0m\n" $(($RANDOM%255)) "$line";done'
#alias hping='/usr/local/Cellar/hping/3.20051105/sbin/hping3'
#alias alogs='tail -F /Applications/MAMP/logs/apache_error.log '
#alias plogs='tail -F /Applications/MAMP/logs/php_error.log'
#alias mlogs='tail -F /Applications/MAMP/logs/mysql_error_log.err'

# Postgresql
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

 matrix(){ echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|gawk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}' }
 
alias john='~/Documents/HACK/john-da-ripper/run/john'

alias simpleserver="python -m SimpleHTTPServer"


# Turbulenz 

alias startlocal="/Users/nidextc/Turbulenz/SDK/0.27.0/start_local.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/Cellar/hping/3.20051105/sbin
function gi() { curl http://www.gitignore.io/api/$@ ;}
