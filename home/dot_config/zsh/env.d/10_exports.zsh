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
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export BUNDLE_USER_CONFIG="${XDG_CONFIG_HOME}/bundle/config"
export IRBRC="${XDG_CONFIG_HOME}/irb/irbrc"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/ripgrep/config"
