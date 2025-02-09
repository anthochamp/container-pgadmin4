#!/usr/bin/env sh
# shellcheck source-path=..
set -eu

# force owner on (possibly mounted) directories / files
chown -hR pgadmin /var/lib/pgadmin

# force https://github.com/pgadmin-org/pgadmin4/blob/REL-8_4/pkg/docker/entrypoint.sh
# from re-executing the config_distro block each time so it recreates config_distro
# (and update from environment variables) at each restart
printf '' >/pgadmin4/config_distro.py

if [ "$1" != "/entrypoint.sh" ]; then
	exec "$@"
fi

exec runuser -u pgadmin -- "$@"
