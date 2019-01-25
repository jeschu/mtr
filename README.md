# mtr

Builds a docker image containing mtr (My traceroute).  

# Motivation

Mac OS is missing mtr tool. It can be installed with [Homebrew](https://brew.sh/) but has to be run with `sudo`.

# Requirements

- [Docker](https://www.docker.com/) *([Docker for Mac](https://docs.docker.com/docker-for-mac/))*
- uuidgen

# Installation

via curl:
```sh -c "$(curl -fsSL https://raw.github.com/jeschu/mtr/install-mtr.sh)"```

via wget:  
```sh -c "$(wget https://raw.github.com/jeschu/mtr/install-mtr.sh -O -)"```
