FROM alpine:latest

RUN apk --no-cache add \
  ruby-bundler \
  ruby-json \
  diffutils

RUN gem install --no-document --no-ri terraform_landscape
ENTRYPOINT ["landscape"]
