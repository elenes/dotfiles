#=====================================================
# Personal environment variables and startup programs
#=====================================================

# If not running interactively, don't do anything
# vagrant breaks without this
case $- in
    *i*) ;;
      *) return;;
esac

# Setup some environment variables.
export HISTSIZE=1000

# Force /usr/local/bin to be first in the path search
export PATH=/usr/local/bin:$PATH

# Add colors to grep output
export GREP_OPTIONS='--color=auto'

# Set terminal colors to 256
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# Linux specific configs
if [ "$(uname -s)" = "Linux" ] ; then
  echo " "
  # Set window title
  PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
  # Prompt
  PS1='\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;37m\]\h\[\033[0m\]: \[\033[1;34m\]\w\n\[\033[1;32m\]\$\[\033[0m\] '
  
fi

# Mac OS specific configs
if [ "$(uname -s)" = "Darwin" ] ; then
  echo " "
fi

#================================
# Personal aliases and functions
#================================

# Source system wide bashrc, if it exists, before running personal configurations
if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
fi

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


# Linux specific configs
if [ "$(uname -s)" = "Linux" ] ; then
  # Make ls use list, show hidden and colors by default
  alias ls="ls -lha --color=auto"
fi

# Mac OS specific configs
if [ "$(uname -s)" = "Darwin" ] ; then
  # Make ls use list, show hidden and colors by default
  alias ls="ls -lhaG"
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
