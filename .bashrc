# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'


if [ $(id -u) -eq 0 ];then
  PS1="\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;36m\]\w\[\e[00m\] # > "
else
  PS1="\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;36m\]\w\[\e[00m\] $ > "
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias ll="ls -la"
alias ls="ls"
alias st="git status "
alias ci="git commit -am "
alias pl="git pull "
alias ph="git push "
alias tree="git log --graph --pretty=oneline --abbrev-commit --color"

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
