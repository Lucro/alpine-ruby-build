FROM ruby:2.3.1-alpine
MAINTAINER Lucro Engineering <dev@lucro.com>

ENV BUILD_PACKAGES="curl-dev build-base openssh curl" \
    DEV_PACKAGES="tzdata libxml2 libxml2-dev libxslt libxslt-dev mysql-client qt5-qtwebkit qt-dev\
                  imagemagick imagemagick-dev postgresql-dev mysql-dev sqlite-dev git gcc g++ make nodejs" 

RUN apk --update --upgrade add $BUILD_PACKAGES $DEV_PACKAGES
RUN rm /var/cache/apk/*
RUN apk add curl \
    && curl -Ls https://github.com/lucro/docker-phantomjs2/archive/v2.1.1-20160523/dockerized-phantomjs.tar.gz \
       | tar xz -C /

CMD [ "/bin/sh" ]
