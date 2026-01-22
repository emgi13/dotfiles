function sy() {
  sioyek "$@" >/dev/null 2>&1 &
  disown
}

_sy() {
  _arguments '*:file:_files -g "*.pdf"'
}
compdef _sy sy
