FROM node:alpine

# Used for, among other things, compiling node-sass, jdk for selenium
# https://github.com/dustinblackman/phantomized
RUN apk add --update bash build-base curl git openssh-client openjdk8-jre-base python \
  && echo "Fixing PhantomJS" \
  && curl -Ls "https://github.com/dustinblackman/phantomized/releases/download/2.1.1/dockerized-phantomjs.tar.gz" | tar xz -C / \
  && rm -rf /usr/share/man /tmp/* /var/tmp/* /var/cache/apk/*
