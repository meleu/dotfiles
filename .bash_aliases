# meleu's bash aliases
######################

# private stuff
if [ -f "${HOME}/.bash_aliases_private" ]; then
  source "${HOME}/.bash_aliases_private"
fi

# from .bashrc template
###############################################################################
# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
###############################################################################


# I know this is an aliases file. But I'm declaring the function below in order
# to assure "portability" between Cygwin/macOs/Linux.
launch() {
  local args="$@"

  case "$OSTYPE" in
    "cygwin"*)
      cygstart "$args"
      ;;
    "darwin"*) # MacOS
      open "$args"
      ;;
    *)
      xdg-open "$args"
      ;;
  esac
}


# links
alias gmail="launch 'https://gmail.com'"

alias gist="launch 'https://gist.github.com/'"

alias keep="launch 'https://keep.google.com/'"


