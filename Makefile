default:build

build:
	docker build -t devon-node:latest -t devon-node:lts ./docker/node

