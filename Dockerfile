FROM $DFROM_BASE_IMAGE

LABEL maintainer="zapotek6@gmail.com"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install --no-install-recommends -y \
        ca-certificates
        git \
        docker.io \
        vim \
        curl
         tcpdump \
         telnet

COPY files/ /
