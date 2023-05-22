FROM ubuntu:22.04

LABEL org.opencontainers.image.source https://github.com/douglasparker/github-backup

RUN apt-get update && \
  apt-get install -y git git-lfs python3-pip && \
  pip install github-backup

ENTRYPOINT ["github-backup"]