() {
  local sdkman_path="$HOME/.sdkman"
  if [[ -d "$sdkman_path" ]] && [[ -s "${sdkman_path}/bin/sdkman-init.sh" ]]; then
    export SDKMAN_DIR="${sdkman_path}"
    source "${sdkman_path}/bin/sdkman-init.sh"
  fi
}
