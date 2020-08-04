# mtr

Builds a docker image containing mtr (My traceroute).  

# Motivation

Mac OS is missing mtr tool. It can be installed with [Homebrew](https://brew.sh/) but has to be run with `sudo`.

# Requirements

- [Docker](https://www.docker.com/) *([Docker for Mac](https://docs.docker.com/docker-for-mac/))*
- uuidgen

# Installation

Installation requires sudo - you will be prompted for your password.

via curl:  
```sh -c "$(curl -fsSL https://raw.github.com/jeschu/mtr/master/install-mtr.sh)"```

via wget:  
```sh -c "$(wget https://raw.github.com/jeschu/mtr/master/install-mtr.sh -O -)"```

Installs a bash script at `/usr/local/bin/mtr`.  
The script executes the following docker run command:  
`docker run -it --rm --name "mtr-$(uuidgen | cut -c -8)" --hostname "$(hostname)" jeschu/mtr:latest $@`

# Update

`docker pull jeschu/mtr`

# Uninstall

```
docker image rm -f jeschu/mtr:latest    # remove docker image
sudo rm -v /usr/local/bin/mtr           # remove shell script
```

# Image on Docker Hub

https://hub.docker.com/r/jeschu/mtr