FROM circleci/node:9.8.0-browsers

USER root

RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable build-essential jq git openssh-server \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV CHROME_BIN /usr/bin/google-chrome

RUN apt-get update && \
    apt-get install -y python-pip python-dev && \
    pip install awscli

USER circleci
