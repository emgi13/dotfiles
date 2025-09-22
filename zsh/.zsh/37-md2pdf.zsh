function md2pdf() {
  if [[ $# -ne 1 ]]; then
    echo "Usage: md2pdf <filename>" >&2
    return 1
  fi

  local file="$1"

  # Check file extension
  if [[ "$file" != *.md && "$file" != *.markdown ]]; then
    echo "Error: File must end with .md or .markdown" >&2
    return 1
  fi

  # Derive output filename: replace extension with .pdf
  local output="${file%.*}.pdf"

  pandoc "$file" --template=eisvogel -o "$output" --citeproc
}
