default:build

build:
	docker build --build-arg "BUILD_VERSION=15" -t isjavi-devv-node:15 ./docker/node
	docker build --build-arg "BUILD_VERSION=16" -t isjavi-devv-node:16 -t isjavi-devv-node:latest ./docker/node
	docker build --build-arg "BUILD_VERSION=7.4-fpm" -t isjavi-devv-php:7 ./docker/php
	docker build --build-arg "BUILD_VERSION=7.4-fpm" -t isjavi-devv-php:7-xdebug --target=xdebug ./docker/php
	docker build --build-arg "BUILD_VERSION=8-fpm" -t isjavi-devv-php:8 -t isjavi-devv-php:latest ./docker/php
	docker build --build-arg "BUILD_VERSION=8-fpm" -t isjavi-devv-php:8-xdebug --target=xdebug ./docker/php

upgrade:
	npm remove -g @itsjavi/devv && \
	npm i -g git+https://github.com/itsjavi/devv.git && \
	npx devv-init
