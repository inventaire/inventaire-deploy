# inventaire-deploy

Tools and scripts to document the installation of [inventaire](https://git.inventaire.io/inventaire) in production.

See also [docker-inventaire](https://git.inventaire.io/docker-inventaire)

## Installation

### Debian/Ubuntu

On your server:
```sh
# if git isn't installed already
sudo apt-get install git
# cloning the deployment tools in the local directory
git clone https://git.inventaire.io/inventaire-deploy
```

Now you 'just have' to install everything: see `./installation/install` for a realistic preview of what that could look like.

You might also want to configure your firewall: see `./setup_firewall`

### Other environments
one environment -> one branch

Want to install it in a different environment? Request a new (orphan) branch and send your pull request!

There are also some other environement documented on the [wiki](https://wiki.inventaire.io/wiki/Deployment).

## Other services

By default, this setup uses the same services as [inventaire.io](https://inventaire.io), but you can start your own instance of those too:
* [Prerender](https://git.inventaire.io/prerender)

## Stack Map
This repo correspond to the the "deployment scripts" in the [stack map](https://inventaire.github.io/stack/)
