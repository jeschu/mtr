#!/usr/bin/env bash
sudo echo 'docker run -it --rm --name "mtr-$(uuidgen | cut -c -8)" --hostname "$(hostname)" jeschu/mtr:latest $@' > /usr/local/bin/mtr
sudo chmod ugo+x /usr/local/bin/mtr
