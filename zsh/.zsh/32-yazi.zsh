function yy() {
  local temp
  temp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$temp"
  if cwd="$(cat -- "$temp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd" || return
  fi
  rm -f -- "$temp"
}
