export EDITOR=nvim
export SUDO_EDITOR=/usr/bin/nvim
export VISUAL=nvim

# INFO: Bun Integration
export BUN_INSTALL="$HOME/.bun"
export GO_INSTALL_PATH="/usr/local/go"

typeset -U PATH path MANPATH INFOPATH LD_LIBRARY_PATH

# If you come from bash you might have to change your $PATH.
export PATH="$GO_INSTALL_PATH/bin:$BUN_INSTALL/bin:/usr/local/texlive/2025/bin/x86_64-linux:$HOME/.elan/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/linuxbrew/.linuxbrew/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export MANPATH="/home/emgixiii/.local/share/man:/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# openai api keys
source ~/.openai.zsh

# rust cargo environment
. "$HOME/.cargo/env"
