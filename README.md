# inventaire-deploy

Tools and scripts to install [inventaire](https://github.com/inventaire/inventaire) in production

![deploy](https://qzprod.files.wordpress.com/2014/06/matrix-computers.jpg?quality=80&strip=all&w=500)

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
