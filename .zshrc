# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_THEME="my-gnzh"

plugins=(git docker zsh-autocomplete kubectl golang)

source $ZSH/oh-my-zsh.sh

# MacOS settings
export LC_ALL="C"

# User configuration
zstyle ':autocomplete:*' min-delay 0.15 # float
zstyle ':autocomplete:*' list-lines 32  # int

# NVM files
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# setting code as kube editor"
if which code &>/dev/null; then export KUBE_EDITOR="$(where code) -w"; fi

# some alias
alias d=docker
alias h=helm
alias c=clear