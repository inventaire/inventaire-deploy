# inventaire-deploy

Tools and scripts to document the installation of [inventaire](https://github.com/inventaire/inventaire) in production.

See also [docker-inventaire](https://github.com/inventaire/docker-inventaire)

:warning: you are free to do anything the [AGPL-3.0 license](https://en.wikipedia.org/wiki/GNU_Affero_General_Public_License) allows you to, but this documentation is not an invitation to self-host your own instance (Inventaire is not ready/optimized for [decentralization](https://github.com/inventaire/inventaire/issues/187))

## Installation
### Ubuntu
On your server:
```sh
# if git isn't installed already
sudo apt-get install git
# cloning the deployment tools in the local directory
git clone https://github.com/inventaire/inventaire-deploy
```
Now you 'just have' to install everything: see `./install` for a realistic preview of what that could look like (but don't just execute that script as it's more meant as a documentation)

You might also want to configure your firewall: see `./setup_firewall`

### Other environments
one environment -> one branch

Want to install it in a different environment? Request a new (orphan) branch and send your pull request!

## Other services

By default, this setup uses the same services as [inventaire.io](https://inventaire.io), but you can start your own instance of those too:
* [Prerender](https://github.com/inventaire/prerender)

## Stack Map
[![stack](https://raw.githubusercontent.com/inventaire/stack/master/snapshots/stack-from-deploy.png)](https://inventaire.github.io/stack/)
