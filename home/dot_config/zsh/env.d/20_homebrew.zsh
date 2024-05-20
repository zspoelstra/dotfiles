() {
  local brew_path="/opt/homebrew/bin"
  if (( ! ${+commands[brew]} )) && [[ -x "${brew_path}/brew" ]]; then
    path=("${brew_path}" ${path})
    fpath=($(brew --prefix)/share/zsh/site-functions ${fpath})
  fi

  if (( ${+commands[brew]} )); then
    eval "$(brew shellenv)"
  fi
}
