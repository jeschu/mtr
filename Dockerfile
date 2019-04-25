FROM alpine:3.9
LABEL maintainer="Jens Schumacher <jeschu@ok.de>" \
      repository="https://github.com/jeschu/mtr" \
      image="jeschu/mtr:latest" \
      cmdline="docker run -it --rm --name mtr-$(uuidgen) jeschu/mtr --displaymode 2 google.de"

RUN apk add --no-cache mtr

ENTRYPOINT [ "/usr/sbin/mtr" ]
