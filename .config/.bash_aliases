#
# ~/.bash_aliases
#
# Store personal aliases here
#

## if user is not root, pass all commands via sudo
if [ $UID -ne 0 ]; then
   alias update='sudo pacman -Syu'
   alias reboot='sudo reboot'
   alias restart='reboot'
   alias shutdown='sudo shutdown now'
else
   alias update='pacman -Syu'
   # alias reboot='reboot'
   alias restart='reboot'
   alias shutdown='shutdown now'
fi

mkd () {
   \mkdir -p $1
#   cd $1
}

alias mkdir='mkd'

alias ls="LC_COLLATE=C \ls --color=always -lhA --group-directories-first --time-style='+%D %R'"
alias less="less -RX"
alias diskspace="du -S | sort -n -r | less"

alias grep='grep --color=auto'
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'
alias vi="vim"
alias diff='colordiff'
alias ping='ping -c 5'

alias i3config='vim ~/.config/i3/config'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias aliases='vim ~/.config/.bash_aliases'
alias vars='vim ~/.bash_vars'
alias xresources='vim ~/.Xresources'
alias reload='source ~/.bashrc'
alias ssoff='xscreensaver-command -exit > /dev/null'
alias sson='xscreensaver -no-splash > /dev/null 2>&1 &'

alias music='ncmpcpp'

alias activateTF='. ~/tensorflow/bin/activate'
