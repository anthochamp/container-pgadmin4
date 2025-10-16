FROM dpage/pgadmin4:9.9@sha256:5d9624a93634d1c5e595619cc57b1d330758120d1baf445fa97300c0c1fc3c0a

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
