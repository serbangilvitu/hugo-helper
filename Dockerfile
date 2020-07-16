FROM ubuntu:20.04

ENV BASE_URL "http://localhost"
ENV CONFIG_FILE "config.toml"
ENV HUGO_BASEDIR "/hugo"

RUN apt update && \
  apt -y install curl git hugo

WORKDIR /hugo

ADD start-hugo.sh /hugo

ENTRYPOINT ["/hugo/start-hugo.sh"]