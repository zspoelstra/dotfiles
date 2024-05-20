if (( ${+commands[asdf]} )); then
  export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
  source "$(brew --prefix asdf)/libexec/asdf.sh"
fi
