ARG DEBIAN_VERSION=12.7
ARG SANE_VERSION=1.0.14-17
ARG HPLIP_VERSION=3.22.10+dfsg0-2

FROM debian:${DEBIAN_VERSION}

ARG SANE_VERSION
ARG HPLIP_VERSION

SHELL ["/bin/bash", "-c"]

RUN apt-get update \
  && apt-get upgrade -y

RUN apt-get install \
  nano \
  sane=${SANE_VERSION} \
  hplip=${HPLIP_VERSION} -y \
  && rm -rf /tmp/*

COPY sane/saned.socket /etc/systemd/system/saned.socket
COPY sane/@saned.service /etc/systemd/system/@saned.service
COPY sane/install.sh /

RUN chmod +x /install.sh \
  && ./install.sh

ENTRYPOINT service saned start \
  && tail -f /dev/null