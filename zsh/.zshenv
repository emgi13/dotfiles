export EDITOR=nvim
export SUDO_EDITOR=/home/linuxbrew/.linuxbrew/bin/nvim
export VISUAL=nvim

# INFO: Bun Integration
export BUN_INSTALL="$HOME/.bun"
export GO_INSTALL_PATH="/usr/local/go"
export OPENSSL_DIR=$(brew --prefix openssl@3)
export PKG_CONFIG_PATH="$OPENSSL_DIR/lib/pkgconfig"



# If you come from bash you might have to change your $PATH.
export PATH="$GO_INSTALL_PATH/bin:$BUN_INSTALL/bin:/usr/local/texlive/2025/bin/x86_64-linux:$HOME/.elan/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/linuxbrew/.linuxbrew/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export MANPATH="/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# openai api keys
source ~/.openai.zsh

# rust cargo environment
. "$HOME/.cargo/env"
