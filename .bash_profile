#=====================================================
# Personal environment variables and startup programs
#=====================================================

# If not running interactively, don't do anything
# vagrant breaks without this
case $- in
    *i*) ;;
      *) return;;
esac

# Force /usr/local/bin to be first in the path search
export PATH=/usr/local/bin:$PATH

# Add colors to grep output
export GREP_OPTIONS='--color=auto'

# Set terminal colors to 256
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

echo "loading elenes shell settings - mac version"

# Load in the git branch prompt script.
source ~/.bash/.git-prompt.sh
# Prompt
export PS1="\n\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;37m\]\h\[\033[0m\]: \[\033[1;33m\]\w \[\033[1;35m\]$(__git_ps1)\n\[\033[1;32m\]\$\[\033[0m\] "


#================================
# Personal aliases and functions
#================================


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000


# Shows used space, uses current directory by default, sorted by size
function used_space() {
  du --human-readable --max-depth=1 --total --exclude=./proc "$@" | sort --human-numeric-sort;
}



# Make ls use list, show hidden and colors by default
alias ls="ls -lhaG"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# homebrew completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
