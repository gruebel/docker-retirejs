# Retire.js

[![Build Status](https://travis-ci.org/gruebel/docker-retirejs.svg?branch=master)](https://travis-ci.org/gruebel/docker-retirejs)
[![Docker Automated build](https://img.shields.io/docker/automated/gruebel/retirejs.svg)](https://hub.docker.com/r/gruebel/retirejs/builds/)

## Overview
A small image based on the offical Node Alpine image.
For more information on the great tool Retire.js check out their [GitHub project](https://github.com/RetireJS/retire.js)!

## Development
### Npm package version check
To check for any outdated npm packages run following command


```bash
$ docker run --rm -it --entrypoint='' gruebel/retirejs:latest npm outdated -g
```
