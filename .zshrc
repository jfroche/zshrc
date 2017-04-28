export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

if [ -z "$XAUTHORITY" ]; then
plugins=(git git-prompt github autojump python vi-mode golang autoenv rvm zsh-syntax-highlighting taskwarrior)
else
plugins=(git git-prompt github autojump python vi-mode tmux golang autoenv rvm zsh-syntax-highlighting taskwarrior)
ZSH_TMUX_AUTOSTART=true

fi

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

for file in $HOME/.zsh/rc/*
do
  source $file
done

bindkey '^R' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward
FZF_TMUX=1
