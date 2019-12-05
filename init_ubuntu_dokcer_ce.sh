#!/usr/bin/env sh

# Update the `apt` package index:
apt-get update && apt-get upgrade && apt-get dist-upgrade

# Install packages to allow `apt` to use a repository over HTTPS:
apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

if [ "$(lsb_release -cs)" = "eoan" ]; then
  codename="disco"
else
  codename="$(lsb_release -cs)"
fi

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $codename stable"

# Update the `apt` package index:
apt-get update && apt-get upgrade && apt-get dist-upgrade

# Install the latest version of Docker Engine - Community and containerd
apt-get install docker-ce docker-ce-cli containerd.io python3 python3-pip

apt install unzip docker-compose

exit
