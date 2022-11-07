FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y git git-lfs python3-pip && \
  pip install github-backup

ENV USER=""
ENV USERNAME=""
ENV PASSWORD=""
ENV TOKEN=""
ENV OUTPUT_DIRECTORY="/github"
ENV GITHUB_HOST=""

ENTRYPOINT ["github-backup"]