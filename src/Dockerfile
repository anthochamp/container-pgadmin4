FROM dpage/pgadmin4:9.17@sha256:2f4ce946ddf8360680d7eff4eaba1d91859eb6b4003e6623bad5c63a322c2f4d

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
