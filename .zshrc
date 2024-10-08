# Set the directory for zinit and its plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Install plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions && autoload -U compinit && compinit
zinit light zsh-users/zsh-autosuggestions && bindkey '^ ' autosuggest-accept
zinit light Aloxaf/fzf-tab

# Include snippets
zinit snippet OMZP::git
zinit snippet OMZP::python
zinit snippet OMZP::sudo
zinit snippet OMZP::ubuntu

zinit cdreplay -q

# Aliases - Terminal commands
alias ls="eza -F"
alias ll="eza -lF --icons"
alias la="eza -aF"
alias lla="eza -alF --icons"
alias zj="zellij"
alias lg="lazygit"
alias c="clear"
alias q="exit"

# Aliases - Neovim
# alias vk='NVIM_APPNAME="nvim-kickstart" nvim'
# alias vl='NVIM_APPNAME="nvim-lazy" nvim'
# alias vs='NVIM_APPNAME="nvim-scratch" nvim'
# alias lazyrc='vl ~/.config/nvim-lazy'
# alias kickrc='vk ~/.config/nvim-kickstart'
# alias scratchrc='vs ~/.config/nvim-scratch'

# Aliases - Tmux (stolen from OMZP)
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias tkss='tmux kill-session -t'
alias tksv='tmux kill-server'
alias tl='tmux list-sessions'
alias tmuxconf='$EDITOR $HOME/.tmux.conf'
alias ts='tmux new-session -s'

# Bindkey
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Completion styling
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls -F --color $realpath"

# Evals
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(thefuck --alias)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Exports
export WINE="$(which wine)"
export WINETRICKS="$(which winetricks)"
export EDITOR="$(which nvim)"

# History
HISTSIZE=5000
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt nullglob

# Paths
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/apache-maven-3.9.6/bin/:$HOME/.local/share/bob/nvim-bin:$HOME/.config/emacs/bin:$HOME/.emacs.d/bin:$HOME/hackerdirectory/scripts/sh/wicked-cool"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-02-25 22:51:43
export PATH="$PATH:/home/brittmouse/.local/bin"

# FZF installation and configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8797"

[ -f "/home/brittmouse/.ghcup/env" ] && . "/home/brittmouse/.ghcup/env" # ghcup-env

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

nerdfetch
