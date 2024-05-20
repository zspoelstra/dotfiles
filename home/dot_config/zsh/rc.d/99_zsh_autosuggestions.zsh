() {
  local autosuggest_path="$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  if [ -f "${autosuggest_path}" ]; then
    source "${autosuggest_path}"
    bindkey '^ ' autosuggest-accept
  fi
}
