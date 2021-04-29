default:build

build:
	docker build --build-arg "BUILD_VERSION=15" -t isjavi-ddev-node:15 ./docker/node
	docker build --build-arg "BUILD_VERSION=16" -t isjavi-ddev-node:16 -t isjavi-ddev-node:latest ./docker/node
	docker build --build-arg "BUILD_VERSION=7.4-fpm" -t isjavi-ddev-php:7 ./docker/php
	docker build --build-arg "BUILD_VERSION=8-fpm" -t isjavi-ddev-php:8 -t isjavi-ddev-php:latest ./docker/php
