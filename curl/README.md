
# curl

A simple Docker image based on alpine that includes the `curl` command line application.

The current versions in the Dockerfile are explicit and reflected in the Makefile to build the image with a version specific tag.
alpine: `3.10.2`
curl: `7.65.1-r0`

# build and publish 
You must be an administrator of the Confluent [cnfldemos/alpine-curl](https://hub.docker.com/r/cnfldemos/alpine-curl) repository to push to DockerHub using the included `Makefile`

`make publish` will build and push the docker image 

# usage

The Entrypoint for the image is the `curl` application, so the image's usage matches the usage for [curl](https://curl.haxx.se/).

