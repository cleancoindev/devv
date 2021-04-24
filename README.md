# devon

Develop-On is a Docker-based tool to allow developers running app maintenance scripts inside containers.

Supports:
- Node / npm
- PHP / composer


Once you include the `./bin` directory in your PATH variable, e.g. in your `~/.zshrc` file:
```bash
export PATH="path-to-devon/bin:$PATH"
```
then, you can run any container from your current directory like `devon npm run build`, which is an alias of
`devon node npm run build`. 

The `devon` command will mount your current directory as delegated volume with some
relevant dot files (.ssh folder, .gitconfig, .composer/auth.json, etc) that might be needed 
to run tasks like `git push`, `npm publish`, `composer install`, etc.
