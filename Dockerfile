FROM alpine:3.21.1
LABEL maintainer="Jens Schumacher <js.dev@familie-schumacher.info>" \
      repository="https://github.com/jeschu/mtr" \
      cmdline="docker run -it --rm --name mtr-$(uuidgen) jeschu/mtr --displaymode 2 google.de"

RUN apk add --no-cache mtr

ENTRYPOINT [ "/usr/sbin/mtr" ]
