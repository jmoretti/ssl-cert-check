FROM alpine:3

COPY . .

RUN apk update && apk upgrade && apk add \
    bash \
    openssl

ENTRYPOINT ["/run.sh"]
