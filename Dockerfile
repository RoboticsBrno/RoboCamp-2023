FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        apt-utils wget software-properties-common gnupg git gcc \
        python3 python3-pip python3-venv openssh-client sshpass rsync curl

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - &&\
    apt-get install -y nodejs

RUN pip3 install \
    mkdocs~=1.3.0 \
    mkdocs-material~=8.3.6 \
    mkdocs-awesome-pages-plugin~=2.5.0 \
    mkdocs-encryptcontent-plugin~=2.1.0 \
    git+https://github.com/it-novum/mkdocs-featherlight.git
