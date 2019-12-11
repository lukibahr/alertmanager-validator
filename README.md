# alertmanager-validator 

[![Build Status](https://ci.devopoly.de/api/badges/lukibahr/alertmanager-validator/status.svg)](https://ci.devopoly.de/lukibahr/alertmanager-validator)

docker container to validate a prometheus config

## Purpose

Built this container to supply a unit test step in a continuous integration pipeline where prometheus configs
will be deployed via a pipeline.

## Usage

Mount your configfiles to the /workdir directory and run:

`/usr/bin/docker run -it -v ./config:/workdir lukasbahr/alertmanager-validator:0.19.0 check-config config.yml`

## Contrib

- Lukas Bahr, <lukas@devopoly.de>
