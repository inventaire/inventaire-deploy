# inventaire-deploy

Tools and scripts to document the installation of [inventaire](https://github.com/inventaire/inventaire) in production

:warning: you are free to do anything the [AGPL-3.0 license](https://en.wikipedia.org/wiki/GNU_Affero_General_Public_License) allows you to, but this documentation is not an invitation to self-host your own instance (Inventaire is not ready for [decentralization](https://github.com/inventaire/inventaire/issues/187))

## Installation
### Ubuntu
On your server:
```sh
# if git isn't installed already
sudo apt-get install git
# cloning the deployment tools in the local directory
git clone https://github.com/inventaire/inventaire-deploy
# start the magic
./install
```
You might also want to configure your firewall:
```sh
./setup_firewall
```

### Other environments
one environment -> one branch

Want to install it in a different environment? Request a new (orphan) branch and send your pull request!

## Other services

By default, this setup uses the same services as [inventaire.io](https://inventaire.io), but you can start your own instance of those too:
* [Prerender](https://github.com/inventaire/prerender)
* [Entities Search Engine](https://github.com/inventaire/entities-search-engine)

## Stack Map
[![stack](https://raw.githubusercontent.com/inventaire/stack/master/snapshots/stack-from-deploy.png)](https://inventaire.github.io/stack/)
