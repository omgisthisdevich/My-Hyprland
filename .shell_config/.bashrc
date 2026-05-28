#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u \W]\$ '

alias MLpreload='LD_PRELOAD=/home/omgisthisdevich/MLPRELOAD/lib/.libs/libgnutls.so.30'

alias ipfake='sudo ip link add vmnic0 type dummy
sudo ip link set vmnic0 addr 00:15:5D:C4:1A:4C'

# running shell customisation scripts
for f in ~/.shell_config/* ; do
    source $f ;
done

#colorss=(159 158 157 156 155 154)
colorss=(33 69 105 141 177 213)
PS1='╭─\[$(colour_username "$USER" colorss)\] × $(date +%X) \W \n╰──►'

fastfetch
DONT_PROMPT_WSL_INSTALL=0
