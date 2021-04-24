# ddev

`ddev` is a Docker-based tool to allow developers running app maintenance scripts inside containers.

When you run `ddev [IMAGE] [COMMAND]` in your current directory, it will mount it
as delegated volume, together with some of your `$HOME` files(*) and folders needed
to run tasks like `git push`, `npm publish`, `composer install`, etc. which usually require
credentials.

(*) *Mounts (read-only): `~/.ssh`, `~/.npmrc`, `~/.composer/auth.json`, `~/.gitconfig`, `~/.gitignore_global`*

## Features
Supported Languages and Tools:

- Node / npm
- PHP / composer (planned)

## Setup

```
npm i -g git+https://github.com/itsjavi/ddev.git && \
ddev-init
```

## Usage

### Node (LTS)

```bash

# Run any command (e.g. "ddev node ls -la" OR "ddev node node index.js")
ddev node [COMMAND]

# Alias for "ddev node npm"
ddev npm [NPM-COMMAND]

# Alias for "ddev node npm run"
ddev npmr [NPM-SCRIPT]
```
