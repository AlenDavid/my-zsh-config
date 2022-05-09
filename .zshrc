# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/davidalen/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_THEME="Gnzh"

plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# NVM files

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# Add Jbang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

# if I want starship"
if which starship &> /dev/null; then eval "$(starship init zsh)"; fi

# if I want jenv"
if which jenv &> /dev/null; then 
    export PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)";
fi