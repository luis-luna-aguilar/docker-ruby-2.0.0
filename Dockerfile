FROM alpine

RUN apk update && apk upgrade && apk add --no-cache bash bash git openssh alpine-sdk

ADD install_ruby.sh /tmp/
RUN /tmp/install_ruby.sh

RUN gem update --system --no-document
RUN gem install bundler --no-ri --no-rdoc
