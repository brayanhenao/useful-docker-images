# Docker images modified for the use in day to day development

This is the source (Dockerfiles) of the images.

## Ubuntu images modified for the use in day to day development

[DockerHub](https://hub.docker.com/r/bhenao/ubuntu/tags)

Direct pull command:

Ubuntu 18.04 Bionic Beaver

```bash
docker pull bhenao/ubuntu:bionic
```

Ubuntu 22.04 Jammy Jellyfish

```bash
docker pull bhenao/ubuntu:jammy
```

### Packages included in the image

#### Shared (listed in [this file](./packages))

* Programming languages:
    * Go (latest version)
    * Node (latest version from nvm)
    * Java (default OpenJDK version)

* Tools:
    * curl
    * git
    * vim
    * build-essential
    * software-properties-common
    * direnv
    * jq
    * maven
    * nvm
    * npm
    * gh (GitHub CLI)
    * kubectl
    * minikube

#### Only in Ubuntu 18.04 Bionic Beaver

* Python 3.6.X

#### Only in Ubuntu 22.04 Jammy Jellyfish

* Python 3.x.x

## Python images

[DockerHub](https://hub.docker.com/r/bhenao/python/tags)

### Python 2.6.6

This image will contain all the packages in the `bhenao/ubuntu:bionic` image plus the addition of Python 2.6.6.

```bash
docker pull bhenao/python:2.6.6
```

### Python 3.6.X

To use Python 3.6.X, you can use the previous
ubuntu [bionic image](#ubuntu-images-modified-for-the-use-in-day-to-day-development)

### Python 3.X.X

To use Python 3.X.X, you can use the previous
ubuntu [jammy image](#ubuntu-images-modified-for-the-use-in-day-to-day-development)