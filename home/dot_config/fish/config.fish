# Disable greeting
set fish_greeting ""

# Editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# XDG base directory specification
set -gx XDG_CONFIG_HOME ~/.config
set -gx XDG_CACHE_HOME ~/.cache
set -gx XDG_DATA_HOME ~/.local/share
set -gx XDG_STATE_HOME ~/.local/state

# XDG compliance (see xdg-ninga for more)
set -gx AWS_CONFIG_FILE "$XDG_CONFIG_HOME/aws/config"
set -gx AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME/aws/credentials"
set -gx BUNDLE_USER_CACHE "$XDG_CACHE_HOME/bundle"
set -gx BUNDLE_USER_CONFIG "$XDG_CONFIG_HOME/bundle/config"
set -gx BUNDLE_USER_PLUGIN "$XDG_DATA_HOME/bundle"
set -gx CP_HOME_DIR "$XDG_DATA_HOME/cocoapods"
set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -gx GEM_SPEC_CACHE "$XDG_CACHE_HOME/gem"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx IRBRC "$XDG_CONFIG_HOME/irb/irbrc"
set -gx LESSHISTFILE "$XDG_STATE_HOME/lesshst"
set -gx RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME/ripgrep/config"

# Theme
fish_config theme choose "Catppuccin Macchiato"

# Aliases
abbr -a bex bundle exec
abbr -a c clear
abbr -a cd.. cd ..
abbr -a cp cp -i
abbr -a cz chezmoi
abbr -a k kubectl
abbr -a mv mv -i
abbr -a rm rm -i
abbr -a vim nvim

# 1Password SSH
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# android
set -gx ANDROID_HOME "$HOME/Library/Android/sdk"
fish_add_path -a "$ANDROID_HOME/emulator"
fish_add_path -a "$ANDROID_HOME/platform-tools"

# brew
if test -x /opt/homebrew/bin/brew
  set -gx HOMEBREW_NO_ENV_HINTS true
  eval "$(/opt/homebrew/bin/brew shellenv)"
end

# fzf
type -q fzf && fzf --fish | source

# mise
set -gx MISE_FISH_AUTO_ACTIVATE 0
type -q mise && mise activate --shims | source

# oh-my-posh
type -q oh-my-posh && oh-my-posh init fish --config ~/.config/oh-my-posh/config.json | source

# postgres.app
fish_add_path -a /Applications/Postgres.app/Contents/Versions/latest/bin

# zoxide
type -q zoxide && zoxide init fish | source
