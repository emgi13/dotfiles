rgf() {
  local PREVIEW_CMD="cat"
  if command -v bat &> /dev/null; then
    PREVIEW_CMD="bat --color=always"
  else
    echo "Warning: 'bat' not found. Install it for better previews." >&2
  fi

  local FZF_BIN="fzf"
  if command -v fzf-tmux &> /dev/null && [[ -n "$TMUX" ]]; then
    FZF_BIN="fzf-tmux -p"
  fi

  # Use $EDITOR environment variable or fallback to vi if not set
  local EDITOR_CMD="${EDITOR:-vi}"

  $FZF_BIN \
    --bind "change:reload(rg --column --line-number --no-heading --color=always --smart-case --fixed-strings {q} || true)" \
    --ansi \
    --preview "$PREVIEW_CMD {1} --highlight-line {2}" \
    --delimiter : \
    --nth 3.. \
    --bind "enter:execute(${EDITOR_CMD} +{2} {1})" \
    --header "Type to search with ripgrep. Enter to open in \$EDITOR. (C-d to cancel)"
}
