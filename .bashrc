export PATH=/usr/local/bin:$PATH
#METEOR
export PACKAGE_DIRS="$HOME/.meteor/packages"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
# alias to love
alias love="/Applications/love.app/Contents/MacOS/love"

export PATH=${PATH}:/Users/renews/Desktop/AndroidSDK/sdk/tools


# DULL=0
# BRIGHT=1

# FG_BLACK=30
# FG_RED=31
# FG_GREEN=32
# FG_YELLOW=33
# FG_BLUE=34
# FG_VIOLET=35
# FG_CYAN=36
# FG_WHITE=37

# FG_NULL=00

# BG_BLACK=40
# BG_RED=41
# BG_GREEN=42
# BG_YELLOW=43
# BG_BLUE=44
# BG_VIOLET=45
# BG_CYAN=46
# BG_WHITE=47

# BG_NULL=00

##
# ANSI Escape Commands
##
# ESC="\033"
# NORMAL="\[$ESC[m\]"
# RESET="\[$ESC[${DULL};${FG_WHITE};${BG_NULL}m\]"

##
# Shortcuts for Colored Text ( Bright and FG Only )
##

# DULL TEXT
# BLACK="\[$ESC[${DULL};${FG_BLACK}m\]"
# RED="\[$ESC[${DULL};${FG_RED}m\]"
# GREEN="\[$ESC[${DULL};${FG_GREEN}m\]"
# YELLOW="\[$ESC[${DULL};${FG_YELLOW}m\]"
# BLUE="\[$ESC[${DULL};${FG_BLUE}m\]"
# VIOLET="\[$ESC[${DULL};${FG_VIOLET}m\]"
# CYAN="\[$ESC[${DULL};${FG_CYAN}m\]"
# WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"

# # BRIGHT TEXT
# BRIGHT_BLACK="\[$ESC[${BRIGHT};${FG_BLACK}m\]"
# BRIGHT_RED="\[$ESC[${BRIGHT};${FG_RED}m\]"
# BRIGHT_GREEN="\[$ESC[${BRIGHT};${FG_GREEN}m\]"
# BRIGHT_YELLOW="\[$ESC[${BRIGHT};${FG_YELLOW}m\]"
# BRIGHT_BLUE="\[$ESC[${BRIGHT};${FG_BLUE}m\]"
# BRIGHT_VIOLET="\[$ESC[${BRIGHT};${FG_VIOLET}m\]"
# BRIGHT_CYAN="\[$ESC[${BRIGHT};${FG_CYAN}m\]"
# BRIGHT_WHITE="\[$ESC[${BRIGHT};${FG_WHITE}m\]"

# # REV TEXT as an example
# REV_CYAN="\[$ESC[${DULL};${BG_WHITE};${BG_CYAN}m\]"
# REV_RED="\[$ESC[${DULL};${FG_YELLOW}; ${BG_RED}m\]"

# PROMPT_COMMAND='export ERR=$?'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cd.='cd ..'
alias cd..='cd ..'
alias k9='kill -9 %%'
alias egrep='grep -E'
alias fgrep='grep -F'
alias ls='ls -FG'
alias m='less'
alias md='mkdir'
alias p='pstree -p'
alias sl='ls'
alias tmp='cd /tmp'
alias l='ls -la'
alias dh='df -h'
alias ds="du -hs * | sort -h"
alias rh= 'heroku restart -a'
alias rs='rails s'
alias rc='rails c'
alias v='vim'
alias vi='vim'
alias testnet='wget http://cachefly.cachefly.net/400mb.test > /dev/null'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias gcempty="git commit --allow-empty -m 'empty -- forcing deploy'"
alias lusers="dscl . list /Users | grep -v '^_'"

export FZF_DEFAULT_OPTS="--extended --cycle"
export PATH="$PATH:/path/to/elixir/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
