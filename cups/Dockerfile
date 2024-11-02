ARG DEBIAN_VERSION=12.7
ARG SAMBA_VERSION=2:4.17.12+dfsg-0+deb12u1
ARG CUPS_VERSION=2.4.2-3+deb12u8

FROM debian:${DEBIAN_VERSION}

ARG SAMBA_VERSION
ARG CUPS_VERSION

SHELL ["/bin/bash", "-c"]

RUN apt-get update \
  && apt-get upgrade -y

RUN apt-get install \
	bash \
  nano \
	net-tools \
  samba=${SAMBA_VERSION} \
  cups=${CUPS_VERSION} -y \
  && rm -rf /tmp/*

COPY cups/smb.conf /etc/samba/smb.conf
COPY cups/cupsd.conf /etc/cups/cupsd.conf
COPY cups/install.sh /

RUN chmod +x /install.sh \
  && ./install.sh

ENTRYPOINT service cups start \
  && tail -f /dev/null