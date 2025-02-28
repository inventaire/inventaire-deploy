# inventaire.io in production

Tools and scripts to document the setup of [Inventaire](https://github.com/inventaire/inventaire) in production at https://inventaire.io.

This is a reference implementation, instructed by preferences, choices, and experience running Inventaire in production, but other implementations are possible: for a less opiniated, more general documentation, see [general technical Inventaire documentation](https://github.com/inventaire/inventaire/docs). See also [docker-inventaire](https://github.com/inventaire/docker-inventaire)

## Stack Map
This repo correspond to the the "deployment scripts" in the [stack map](https://inventaire.github.io/stack/)

## Installation
### Debian/Ubuntu
```sh
# if git isn't installed already
sudo apt-get install git
# cloning the deployment tools in the local directory
git clone https://git.inventaire.io/inventaire-deploy
```
Now you 'just have' to install everything: see `./install` for a realistic preview of what that could look like (but don't just execute those scripts as they are more meant as a documentation with shell formatting)

You might also want to configure your firewall: see `./setup_firewall`

## inventaire.io specific services

* [Prerender](https://github.com/inventaire/prerender)
