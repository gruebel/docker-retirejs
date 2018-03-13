# Retire.js

[![Build Status](https://travis-ci.org/gruebel/docker-retirejs.svg?branch=master)](https://travis-ci.org/gruebel/docker-retirejs)
[![Docker Automated build](https://img.shields.io/docker/automated/gruebel/retirejs.svg)](https://hub.docker.com/r/gruebel/retirejs/builds/)

## Overview
A small image based on the offical Node Alpine image.
For more information on the great tool Retire.js check out their [GitHub project](https://github.com/RetireJS/retire.js)!

## Usage
### CMD
To scan your project for JavaScript vulnerabilities run following command

```bash
$ docker run --rm -v $PWD:/app gruebel/retirejs:latest
```

Additionally it is possible to use the supported [arguments](https://www.npmjs.com/package/retire#usage)

```bash
$ docker run --rm -v $PWD:/app gruebel/retirejs:latest --ignorefile .retireignore.json
```

### Jenkins Pipeline
To integrate it into a CI/CD pipeline add following snippet

```groovy
Jenkinsfile (Declarative Pipeline)
pipeline {
    agent none
    stages {
        stage('JS vulnerability check') {
            agent {
                docker 'gruebel/retirejs:latest'
                args '--entrypoint ""'
            }
            steps {
                sh 'retire'
            }
        }
    }
}
```

## Development
### Npm package version check
To check for any outdated npm packages run following command

```bash
$ docker run --rm -it --entrypoint='' gruebel/retirejs:latest npm outdated -g
```
