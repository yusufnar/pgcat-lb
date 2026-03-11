# PgCat Dockerfile
# Official PgCat image - ARM64 & AMD64 compatible

FROM ghcr.io/postgresml/pgcat:latest

# Copy configuration
COPY pgcat.toml /etc/pgcat/pgcat.toml

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# PgCat default port + Prometheus exporter
EXPOSE 6432 9930

ENTRYPOINT ["/entrypoint.sh"]
