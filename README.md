# PHP for WordPress Docker Container Image

[![Build Status](https://travis-ci.org/anaxexp/wordpress-php.svg?branch=master)](https://travis-ci.org/anaxexp/wordpress-php)
[![Docker Pulls](https://img.shields.io/docker/pulls/anaxexp/wordpress-php.svg)](https://hub.docker.com/r/anaxexp/wordpress-php)
[![Docker Stars](https://img.shields.io/docker/stars/anaxexp/wordpress-php.svg)](https://hub.docker.com/r/anaxexp/wordpress-php)
[![Docker Layers](https://images.microbadger.com/badges/image/anaxexp/wordpress-php.svg)](https://microbadger.com/images/anaxexp/wordpress-php)

## Docker Images

❗For better reliability we release images with stability tags (`anaxexp/wordpress-php:7.1-X.X.X`) which correspond to [git tags](https://github.com/anaxexp/wordpress-php/releases). We strongly recommend using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [anaxexp/php](https://github.com/anaxexp/php)
* [Travis CI builds](https://travis-ci.org/anaxexp/wordpress-php) 
* [Docker Hub](https://hub.docker.com/r/anaxexp/wordpress-php)

[_(Dockerfile)_]: https://github.com/anaxexp/wordpress-php/tree/master/Dockerfile

Supported tags and respective `Dockerfile` links:

* `7.2`, `7`, `latest` [_(Dockerfile)_]
* `7.1` [_(Dockerfile)_]
* `7.0` [_(Dockerfile)_]
* `5.6`, `5` [_(Dockerfile)_]
* `7.2-dev`, `7-dev` [_(Dockerfile)_]
* `7.1-dev` [_(Dockerfile)_]
* `7.0-dev` [_(Dockerfile)_]
* `5.6-dev`, `5-dev` [_(Dockerfile)_]
* `7.2-dev-macos`, `7-dev-macos` [_(Dockerfile)_]
* `7.1-dev-macos` [_(Dockerfile)_]
* `7.0-dev-macos` [_(Dockerfile)_]
* `5.6-dev-macos`, `5-dev-macos` [_(Dockerfile)_]

For better reliability we additionally release images with stability tags (`anaxexp/wordpress-php:7.1-X.X.X`) which correspond to git tags. We **strongly recommend** using images only with stability tags. 

## Tools

[WP CLI (latest version)](https://packagist.org/packages/wp-cli/wp-cli)

## Environment Variables

See at [anaxexp/php](https://github.com/anaxexp/php)

## Orchestration Actions

Usage:
```
make COMMAND [params ...]
 
commands:
    duplicator-import source
    init-wordpress   
    cache-clear
    
default params values:
    target all
    is_hash 0 
```

See [anaxexp/php](https://github.com/anaxexp/php) for all actions

## Complete WordPress Stack

See [WordPress4Docker](https://github.com/anaxexp/wordpress4docker).
