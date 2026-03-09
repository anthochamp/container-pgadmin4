FROM dpage/pgadmin4:9.13@sha256:d243a4bcc02d2ee6b447c601692813531d2d0fbca18b583d9f7f9658da835d81

# pgadmin4 sets user/group to pgadmin:pgadmin
# We need root access on Dockerfile & docker-entrypoint.sh, lets put back
# initial user 0 and we'll execute pgadmin later with su-exec.
# hadolint ignore=DL3002
USER 0

# hadolint ignore=DL3018
RUN apk --no-cache add su-exec

ENV PGADMIN4_INSTALL_DIR=/pgadmin4

COPY --chmod=775 /rootfs/docker-entrypoint.sh /
COPY --chmod=775 /rootfs/pgadmin4-version.sh /
COPY --chown=pgadmin /rootfs/config_local.py $PGADMIN4_INSTALL_DIR/

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["/entrypoint.sh"]
