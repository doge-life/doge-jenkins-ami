#!/bin/bash -e

cd ~
curl -sO https://releases.hashicorp.com/packer/0.12.3/packer_0.12.3_linux_amd64.zip
sudo unzip packer_0.12.3_linux_amd64.zip -d /usr/local/bin
