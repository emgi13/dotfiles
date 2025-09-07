# PLugins
plugins=(zsh-autosuggestions zsh-syntax-highlighting command-not-found zsh-bat web-search)

# Oh My ZSH
source "$ZSH/oh-my-zsh.sh"

ZSH_CUSTOM_DIR="$HOME/.zsh"
if [ -d "$ZSH_CUSTOM_DIR" ]; then
  for file in "$ZSH_CUSTOM_DIR"/*.zsh; do
    [ -r "$file" ] && source "$file"
  done
  unset file
fi
