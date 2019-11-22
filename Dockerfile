FROM alpine:3.10

# libc6-compat & libstdc++ are required for extended SASS libraries
# ca-certificates are required to fetch outside resources (like Twitter oEmbeds)
RUN apk update && \
    apk add --no-cache ca-certificates git hugo libc6-compat libstdc++

VOLUME /site
WORKDIR /site

# Expose port for live server
EXPOSE 1313

COPY scripts/docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
