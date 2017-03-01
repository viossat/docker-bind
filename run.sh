#!/bin/sh
set -e

chown -Rf named:named /etc/bind /var/cache/bind

exec "$@"
