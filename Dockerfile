FROM ruby:2.4.4-alpine3.7
MAINTAINER Lucro Engineering <dev@lucro.com>

ENV BUILD_PACKAGES="curl-dev build-base openssh curl" \
    DEV_PACKAGES="tzdata libxml2 libxml2-dev libxslt libxslt-dev \
                  postgresql-client postgresql-dev git gcc g++ \
                  make nodejs yarn"

RUN apk --update --upgrade add $BUILD_PACKAGES $DEV_PACKAGES && \
    rm /var/cache/apk/*

CMD [ "/bin/sh" ]
