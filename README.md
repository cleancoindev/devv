# ddev

`ddev` is a Docker-based tool to allow developers running app maintenance scripts inside containers.

When you run `ddev [IMAGE] [COMMAND]` in your current directory, it will mount it
as delegated volume, together with some of your `$HOME` files(*) and folders needed
to run tasks like `git push`, `npm publish`, `composer install`, etc. which usually require
credentials.

(*) *Mounts (read-only): `~/.ssh`, `~/.npmrc`, `~/.composer/auth.json`, `~/.gitconfig`, `~/.gitignore_global`*


## Setup

```
npm i -g git+https://github.com/itsjavi/ddev.git && \
ddev-init
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
ddev [LANG]:[VERSION] [COMMAND] [...PARAMETERS]
```

```bash
# Examples:
ddev node:16 node --version
ddev node npm install
ddev npm install

ddev php:8 php --ini
ddev php composer install
ddev composer install
```
