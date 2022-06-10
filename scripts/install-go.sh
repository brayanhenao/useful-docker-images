#!/usr/bin/env bash

# Download Go
curl --fail -L \
  --connect-timeout 40 \
  --max-time 10 \
  --retry 5 \
  --retry-delay 0 \
  --retry-max-time 40 \
  --output go.tar.gz https://go.dev/dl/"$(curl https://go.dev/VERSION?m=text)".linux-amd64.tar.gz

# Extract
tar -C /usr/local -xf go.tar.gz

# Setup
###
mkdir -p ~/go/{bin,pkg,src}
### Export paths
echo "export GOPATH=~/GO" >> ~/.bashrc && source ~/.bashrc
echo "export PATH='$PATH':/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc && source ~/.bashrc

rm go.tar.gz
