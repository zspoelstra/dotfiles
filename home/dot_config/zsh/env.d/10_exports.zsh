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
export BUNDLE_USER_CONFIG="${XDG_CONFIG_HOME}/bundle"
export BUNDLE_USER_CACHE="${XDG_CACHE_HOME}/bundle"
export BUNDLE_USER_PLUGIN="${XDG_DATA_HOME}/bundle"
export IRBRC="${XDG_CONFIG_HOME}/irb/irbrc"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/ripgrep/config"
