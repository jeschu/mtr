FROM alpine:3.17.0
LABEL maintainer="Jens Schumacher <jeschu@ok.de>" \
      repository="https://github.com/jeschu/mtr" \
      cmdline="docker run -it --rm --name mtr-$(uuidgen) jeschu/mtr --displaymode 2 google.de"

RUN apk add --no-cache mtr

ENTRYPOINT [ "/usr/sbin/mtr" ]
