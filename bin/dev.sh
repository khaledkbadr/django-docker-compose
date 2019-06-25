#!/usr/bin/env bash
# bin/dev
# environment variables to be defined externally for security
DOMAIN=myproject.local
DJANGO_USE_DEBUG=1 \
DJANGO_USE_DEBUG_TOOLBAR=1 \
SITE_HOST="$DOMAIN" \
POSTGRES_HOST="0.0.0.0" \
POSTGRES_PASSWORD="khaled" \
POSTGRES_USER="khaled" \
POSTGRES_DB="myproject_db" \
  docker-compose $*