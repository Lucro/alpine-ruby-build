FROM ruby:2.2-alpine
MAINTAINER arobson <arobson@gmail.com>

ENV BUILD_PACKAGES="curl-dev build-base openssh" \
    DEV_PACKAGES="tzdata libxml2 libxml2-dev libxslt libxslt-dev mysql-client qt5-qtwebkit qt-dev\
                  imagemagick imagemagick-dev postgresql-dev mysql-dev sqlite-dev git gcc g++ make nodejs" 

RUN apk --update --upgrade add $BUILD_PACKAGES $DEV_PACKAGES
RUN rm /var/cache/apk/*
RUN apk add curl \
    && curl -Ls https://github.com/arobson/docker-phantomjs2/releases/download/v2.1.1-20160523/dockerized-phantomjs.tar.gz \
       | tar xz -C /

CMD [ "/bin/sh" ]