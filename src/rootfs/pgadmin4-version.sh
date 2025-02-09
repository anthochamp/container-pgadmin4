#!/bin/sh
set -eu

# from pgadmin4' makefile
release=$(grep ^APP_RELEASE "$PGADMIN4_INSTALL_DIR"/version.py | awk -F"=" '{print $2}' | tr -d '[:space:]')
revision=$(grep ^APP_REVISION "$PGADMIN4_INSTALL_DIR"/version.py | awk -F"=" '{print $2}' | tr -d '[:space:]')

echo "${release}.${revision}"
