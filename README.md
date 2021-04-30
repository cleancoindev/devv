# devv

`devv` is a zero-config Docker-based tool to allow developers running app maintenance scripts inside containers, without writing a single line of Dockerfile. This is useful specially to run command-line tools, you won't need to have your own docker files to do that.

When you run `devv [IMAGE] [COMMAND]` in your current directory, it will mount it
as delegated volume, together with some of your `$HOME` files(*) and folders needed
to run tasks like `git push`, `npm publish`, `composer install`, etc. which usually require
credentials.

(*) *From your $HOME, it only mounts the following (read-only): `~/.npmrc`, `~/.composer/auth.json`, `~/.gitconfig`, `~/.gitignore_global`*


## Setup

You can clone this repository and run `bin/devv-init`, then you will have to manually config the `bin` directory in your `$PATH` variable to have `devv` available everywhere.

Alternatively, if you have node installed in your OS, you can install it globally with `npm`.

```
npm i -g @itsjavi/devv && \
devv-init
```

The Docker images are built by you, so you can customize this project to your needs and run `devv-init` every time you need.

## Supported Languages

Node & npm:
- `node`
- `node:15`
- `node:16`, `node:latest`, `node`
- `npm` (runs on `node:latest`)

PHP & composer: 
- `php`
- `php:7`
- `php:7-xdebug`
- `php:8`, `php:latest`, `php`
- `php:8-xdebug`
- `composer` (runs on `php:latest`)

Go (planned): 
- `go`
- `go:1.15`
- `go:1.16`
- `go:latest`

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

# Running phpunit with code coverage:
devv php:7-xdebug XDEBUG_MODE=coverage vendor/bin/phpunit
```
