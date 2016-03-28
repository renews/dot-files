# Path to your oh-my-zsh installation.
export PATH=/usr/local/bin:$PATH
#METEOR
export PACKAGE_DIRS="$HOME/.meteor/packages"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export ZSH=/Users/"$(whoami)"/.oh-my-zsh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

DEFAULT_USER="$(whoami)"

export ANDROID_HOME=/usr/local/opt/android-sdk
# export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
# export PATH=/usr/local/opt/findutils/libexec/gnubin:$PATH
# export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
# export MANPATH=/usr/local/opt/findutils/libexec/gnuman:$MANPATH
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bower aws brew bundler common-aliases encode64 gem jump meteor node npm pip rails redis-cli ruby tmux temuxnator web-search)

# User configuration
export PATH="$HOME:/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# keybinding
#bindkey -v
#bindkey -M viins ‘jj’ vi-cmd-mode
#bindkey ‘^R’ history-incremental-search-backward

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="$HOME:/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
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
alias ds="du -hs * | sort s"
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias v='vim'
alias vi='vim'
alias speed400='wget http://cachefly.cachefly.net/400mb.test > /dev/null'
alias speedtest='speedtest-cli'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias gcempty="git commit --allow-empty -m 'empty -- forcing deploy' && ggpush"
alias lusers="dscl . list /Users | grep -v '^_'"
alias ion="ionic serve"
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias zshrc="vim ~/.zshrc"
alias bashrc="vim ~/.bashrc"
alias love="/Applications/love.app/Contents/MacOS/love"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# update sbtopts for scala
echo '-J-XX:+CMSClassUnloadingEnabled\n-J-Xmx2G\n' >> /usr/local/etc/sbtopts

GIT_SSL_NO_VERIFY=true
