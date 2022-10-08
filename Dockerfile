# Container image that runs your code
FROM elixir:1.14-alpine

# This step installs all the build tools we'll need
RUN apk update && \
  apk upgrade --no-cache && \
  apk add --no-cache \
    bash \
    build-base \
    cargo \
    erlang-dev \
    git \
    gzip \
    make \
    nodejs \
    rust \
    tar \
    yarn \
    tree \
    --virtual build-dependencies



# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]