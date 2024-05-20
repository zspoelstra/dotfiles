# Disable Apple shell sessions
SHELL_SESSIONS_DISABLE=1

# copied from /etc/zprofile
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi
