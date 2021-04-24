# devv

`devv` is a Docker-based tool to allow developers running app maintenance scripts inside containers.

When you run `devv [IMAGE] [COMMAND]` in your current directory, it will mount it
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
npm i -g git+https://github.com/itsjavi/devv.git
```

## Usage

### Node (LTS)

```bash

# Run any command (e.g. "devv node ls -la" OR "devv node node index.js")
devv node [COMMAND]

# Alias for "devv node npm"
devv npm [NPM-COMMAND]

# Alias for "devv node npm run"
devv npmr [NPM-SCRIPT]
```

