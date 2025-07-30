export EDITOR=nvim
export SUDO_EDITOR=/home/linuxbrew/.linuxbrew/bin/nvim
export VISUAL=nvim

# INFO: Bun Integration
export BUN_INSTALL="$HOME/.bun"

# If you come from bash you might have to change your $PATH.
export PATH="$BUN_INSTALL/bin:$HOME/.elan/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/linuxbrew/.linuxbrew/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# openai api keys
source ~/.openai.zsh

# rust cargo environment
. "$HOME/.cargo/env"
