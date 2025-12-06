FROM dpage/pgadmin4:9.10@sha256:8c128407f45f1c582eda69e71da1a393237388469052e3cc1e6ae4a475e12b70

# pgadmin4 sets user/group to pgadmin:pgadmin
# We need root access on Dockerfile & docker-entrypoint.sh, lets put back
# initial user 0 and we'll execute pgadmin later with runuser.
# hadolint ignore=DL3002
USER 0

# hadolint ignore=DL3018
RUN apk --no-cache add runuser

ENV PGADMIN4_INSTALL_DIR=/pgadmin4

COPY --chmod=775 /rootfs/docker-entrypoint.sh /
COPY --chmod=775 /rootfs/pgadmin4-version.sh /
COPY --chown=pgadmin /rootfs/config_local.py $PGADMIN4_INSTALL_DIR

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["/entrypoint.sh"]
