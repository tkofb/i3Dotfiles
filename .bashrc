#
# ~/.bashrc

# If not running interactively, don't do anything

#ALIASES



[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]
then
    startx
fi



alias grep='grep --color=auto'
alias vim='nvim'
alias cal='gcalcli --calendar benard.kihiuria@gmail.com --lineart fancy calw'
alias clear='clear ; echo baddy'
alias commit='~/Projects/push.sh'
#alias gtasks='cd google-tasks-cli; ./bin/linux/gtasks'

echo

rxfetch
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

eval "$(starship init bash)"
