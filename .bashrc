# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
source ~/.git-prompt.sh
# User specific aliases and functions

alias susmem="su -c \"echo -n mem > /sys/power/state\""
export EDITOR=vim
export SVN_EDITOR=vim
export PS1="\n\[\]┌─[\[\]\u@\h:\w\[\]]──[\[\]\A\[\]]$(__git_ps1 " [%s]")\n└╼ "
export LESS="-F -X -I"

function mkcd {
    if [ -z "$1" ] ; then
        echo "mkcd: error: argument missing"
        return 1
    fi
    if [ -e "$1" ] ; then
        echo "mkcd: error: file exists"
        return 1
    fi
    mkdir $1 && cd $1
}

alias passup='truecrypt ~/.passcache/encrypted ~/.passcache/mnt --protect-hidden=no -k=""'
alias passdown='truecrypt -d ~/.passcache/encrypted'
function getpass {
        passup
        grep -i "$1" ~/.passcache/mnt/passwords.txt
        passdown
}
alias open=xdg-open			
alias removecolor="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"

alias ls="ls --color=auto"
alias ll="ls --color=auto -l"
alias jgrep="egrep -Ri --include \*java"
alias deptree="mvn dependency:tree"

export HISTCONTROL="ignoredups"
shopt -s histappend

bind 'set completion-ignore-case on'

#colored man
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

alias npp="/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe "
