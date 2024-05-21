# locale settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# preferred editor and pager
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# homebrew
export HOMEBREW_NO_ENV_HINTS=1

# SSH
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# XDG base directory specification
export XDG_CONFIG_HOME"=${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# XDG compliance (see xdg-ninga for help)
export ASDF_CONFIG_FILE="${XDG_CONFIG_HOME}/asdf/asdfrc"
export ASDF_DATA_DIR="${XDG_DATA_HOME}/asdf"
export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"
export BUNDLE_USER_CONFIG="${XDG_CONFIG_HOME}/bundle/config"
export BUNDLE_USER_CACHE="${XDG_CACHE_HOME}/bundle/cache"
export BUNDLE_USER_PLUGIN="${XDG_DATA_HOME}/bundle/plugin"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export CP_HOME_DIR="${XDG_DATA_HOME}/cocoapods"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
export IRBRC="${XDG_CONFIG_HOME}/irb/irbrc"
export LESSHISTFILE="${XDG_STATE_HOME}/less/history"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export PSQL_HISTORY="${XDG_DATA_HOME}/psql_history"
export REDISCLI_HISTFILE="${XDG_DATA_HOME}/redis/rediscli_history"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/ripgrep/config"
export SDKMAN_DIR="${XDG_DATA_HOME}/sdkman"
export SOLARGRAPH_CACHE="${XDG_CACHE_HOME}/solargraph"
