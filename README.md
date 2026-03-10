# pgAdmin4 Container

![GitHub License](https://img.shields.io/github/license/anthochamp/container-pgadmin4?style=for-the-badge)
![GitHub Release](https://img.shields.io/github/v/release/anthochamp/container-pgadmin4?style=for-the-badge&color=457EC4)
![GitHub Release Date](https://img.shields.io/github/release-date/anthochamp/container-pgadmin4?style=for-the-badge&display_date=published_at&color=457EC4)

Container images based on the [official pgAdmin4 image](https://hub.docker.com/r/dpage/pgadmin4), the most popular administration platform for PostgreSQL.

## How to use this image

```shell
docker run -p 8080:80 \
  -e PGADMIN_DEFAULT_EMAIL=admin@example.com \
  -e PGADMIN_DEFAULT_PASSWORD=password \
  anthochamp/pgadmin4
```

## Volume

| Path               | Description                        |
|--------------------|------------------------------------|
| `/var/lib/pgadmin` | Persistent pgAdmin4 data directory |

## Configuration

All environment variables from the official pgAdmin4 image are supported. Refer to the [pgAdmin4 documentation](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html) for the full list.

This container adds Docker secrets support for the mail password:

### MAIL_PASSWORD_FILE

Path to a file containing the pgAdmin4 mail password. When set, the content of the file is used as the `MAIL_PASSWORD` configuration value.

## References

- [pgAdmin4 container deployment documentation](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html)
- [pgAdmin4 configuration reference](https://www.pgadmin.org/docs/pgadmin4/latest/config_py.html)
- [Official pgAdmin4 Docker Hub image](https://hub.docker.com/r/dpage/pgadmin4)
