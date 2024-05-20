() {
  # local bin path
  path=(${HOME}/.local/bin ${path})

  # docker
  local docker_path="${HOME}/.docker/bin"
  if [[ -d "${docker_path}" ]]; then
    path=(${docker_path} ${path})
  fi

  # postgres.app
  local postgres_path="/Applications/Postgres.app/Contents/Versions/latest/bin"
  if [[ -d "${postgres_path}" ]]; then
    path=($postgres_path ${path})
  fi

  # yarn
  if (( ${+commands[yarn]} )); then
    path=($(yarn global bin) ${path})
  fi
}
