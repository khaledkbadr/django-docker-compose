#!/usr/bin/env bash
# bin/dev
# environment variables to be defined externally for security
DOMAIN=myproject.local
BUILD_ENV="dev" \
DJANGO_USE_DEBUG=1 \
DJANGO_USE_DEBUG_TOOLBAR=1 \
SITE_HOST="$DOMAIN" \
MEDIA_HOST="media.$DOMAIN" \
STATIC_HOST="static.$DOMAIN" \
POSTGRES_HOST="0.0.0.0" \
POSTGRES_PASSWORD="khaled" \
POSTGRES_USER="khaled" \
POSTGRES_DB="myproject_db" \
  docker-compose $*