# disable Apple shell sessions
SHELL_SESSIONS_DISABLE=1

# run the path_helper in the order that we want it
# copied from /etc/zprofile
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi
