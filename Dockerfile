FROM cypress/internal:cy-0.19.4

MAINTAINER Gabor Raz

USER root

RUN apt-get update \
    && curl https://install.meteor.com/ | sh \
    && apt-get install -y openssh-client \
    && echo 'PATH="/usr/local/node/bin:${PATH}"' >> /etc/bash.bashrc