# devv

`devv` is a Docker-based tool to allow developers running app maintenance scripts inside containers.

When you run `devv [IMAGE] [COMMAND]` in your current directory, it will mount it
as delegated volume, together with some of your `$HOME` files(*) and folders needed
to run tasks like `git push`, `npm publish`, `composer install`, etc. which usually require
credentials.

(*) *From your $HOME, it only mounts the following (read-only): `~/.ssh`, `~/.npmrc`, `~/.composer/auth.json`, `~/.gitconfig`, `~/.gitignore_global`*


## Setup

```
npm i -g @itsjavi/devv && \
devv-init
```

## Supported Languages

Node & npm:
- `node`
- `node:15`
- `node:16`
- `node:latest`
- `npm` (runs on `node:latest`)

PHP & composer: 
- `php`
- `php:7`
- `php:8`
- `php:latest`
- `composer` (runs on `php:latest`)

## Usage

```bash
# Usage template:
devv [LANG]:[VERSION] [COMMAND] [...PARAMETERS]
```

```bash
# Examples:
devv node:16 node --version
devv node npm install
devv npm install

devv php:8 php --ini
devv php composer install
devv composer install
```
