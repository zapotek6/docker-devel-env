# Docker Development Environment


## Create the producing image

> docker run -it -d \
                --name docker-builder \
                -v /Users/mirkobonadei/data/repos/github.com/zapotek6/docker-devel-env:/proj \
                -v /var/run/docker.sock:/var/run/docker.sock \
                ubuntu:21.10 \
                bash

enter the image

> $ docker exec -it docker-builder bash

install some utilities

> # apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y docker.io vim


## create temp image

> docker run -it --rm \
                --name docker-builder_image-builder \
                -v /var/run/docker.sock:/var/run/docker.sock \
                -v /Users/mirkobonadei/data/repos/github.com/zapotek6/image_builder:/proj \
                registry.pilauno.com/docker-devel-env:latest \
                bash