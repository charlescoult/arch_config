#
# ~/.bashrc
#



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\[\e[0;36m\]\u \[\e[0;35m\]\h \[\e[0m\]$PWD\n'
# PS1='\[\e[0;36m\]\u \[\e[0;35m\]\h \[\e[0m\]\W\n'
PS1='\[\e[0;36m\]\u \[\e[0;35m\]\h \[\e[0m\]\W \[\e[0;35m\]>.< \[\e[0m\]'

# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64:/opt/cuda/extras/CUPTI/lib64"
# export CUDA_HOME=/opt/cuda
# export LD_PRELOAD="/usr/lib/libstderred.so${LD_PRELOAD:+:$LD_PRELOAD}"

if [ -f ~/.config/.bash_aliases ]; then
	. ~/.config/.bash_aliases
fi

if [ -f ~/.config/.bash_vars ]; then
	. ~/.config/.bash_vars
fi

# Auto cd if you eneter just a directory
shopt -s autocd

# command not found script
# not working?
# source /usr/share/doc/pkgfile/command-not-found.bash

# xterm transparency
#[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID"  >/dev/null


TOLASTLINE=$(tput cup "$LINES")
PS1="\[$TOLASTLINE\]$PS1"
