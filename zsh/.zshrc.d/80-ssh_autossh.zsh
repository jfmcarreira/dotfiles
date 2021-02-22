alias ssh='env SSH_PWD="$PWD" /usr/bin/ssh'

if [ -n "$SSH_PWD" ] && [ -d "$SSH_PWD" ]; then
cd "$SSH_PWD"
fi
unset SSH_PWD
