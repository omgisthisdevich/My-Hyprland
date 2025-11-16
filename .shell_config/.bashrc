#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# running shell customisation scripts
# for f in ~/.shell_config/* ; do
#     source $f ;
# done
# 
# colorss=(159 158 157 156 155 154)
# PS1='\[$(colour_username "$USER" colorss)\] × $(date +%X) \W \n↳ '
