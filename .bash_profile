# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
PS1='\[\e[33;1m\]\u@\h: \[\e[31m\]\W\[\e[0m\]$ '

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.proprietary.sh
source ~/.custom.sh

PORTABLEVIM=/Users/linh/repos/portablevim
alias vim="$PORTABLEVIM/vimMac/vim"
