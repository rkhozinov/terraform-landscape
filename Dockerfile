FROM alpine:3.10 as build

RUN apk --no-cache add \
  ruby-bundler \
  ruby-json \
  diffutils

RUN gem install --no-document --no-ri terraform_landscape -v 0.1.17
ENTRYPOINT ["landscape"]
