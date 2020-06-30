# Node
export NODE_PATH=/usr/local/lib/node_modules

# Python 3
export PYTHON3PATH=/usr/local/opt/python/libexec/bin

# Go
export GOPATH=$HOME/Code/go
export GOROOT=/usr/local/opt/go/libexec

# PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PYTHON3PATH:$PATH

# Lang
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# zsh
export ZSH=$HOME/.zsh
export ZSHPLUGINS=$ZSH/plugins
export ZSHTHEMES=$ZSH/themes

# zsh plugins
source $ZSHPLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSHPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh themes
source $ZSHTHEMES/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_DIR_PATH_SEPARATOR=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-remotebranch)

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Aliases
alias zshconfig="sublime ~/.zshrc"
