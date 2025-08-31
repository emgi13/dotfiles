julia() {
  julia_bin=${JULIA_DEPOT_PATH:-~/.julia}/environments/repl/bin/julia
  if [[ -f "${julia_bin}" ]]; then
    "${julia_bin}" "$@"
  else
    command julia "$@"
  fi
}
