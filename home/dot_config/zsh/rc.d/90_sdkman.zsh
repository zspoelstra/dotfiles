() {
  local sdkman_dir="${HOME}/.sdkman"
  if [[ -d "${sdkman_dir}" ]] && [[ -s "${sdkman_dir}/bin/sdkman-init.sh" ]]; then
    export SDKMAN_DIR="${sdkman_dir}"
    source "${sdkman_dir}/bin/sdkman-init.sh"
  fi
}
