# inventaire-deploy

Tools and scripts to install self-hosted [inventaire](https://github.com/inventaire/inventaire) instance

![deploy](https://qzprod.files.wordpress.com/2014/06/matrix-computers.jpg?quality=80&strip=all&w=500)

## Installation
### Ubuntu
On your server:
```sh
# cloning the deployment tools in the local directory
git clone https://github.com/inventaire/inventaire-deploy .
# start the magic
./install
```

### Other environments
one environment -> one branch

Want to install it in a different environment? Request a new (orphan) branch and send your pull request!

## Other services

By default, this setup uses the same services as [inventaire.io](https://inventaire.io), but you can start your own instance of those too:

### Prerender
* repo: [inventaire/prerender](https://github.com/inventaire/prerender)
* live: [http://prerender.inventaire.io:3000](http://prerender.inventaire.io:3000) (Only responding to whitelisted ips)
* setup: once you installed your instance, run the installation and pass its full url when requested, or, if you already run the `install` script, you can directly replace `http://prerender.inventaire.io:3000` by your instance url in `/etc/nginx/sites-available/default`

### Wikidata Subset Search Engine
* repo: [inventaire/wikidata-subset-search-engine](https://github.com/inventaire/wikidata-subset-search-engine)
* live: [https://data.inventaire.io/](https://data.inventaire.io/)
* setup: integration is very much in progress and might change a few times in the coming weeks after this writing so the most future-proof advice there is to make a global search in the [client's code](http://github.com/inventaire/inventaire-client) and to replace every instance of `data.inventaire.io` by your own url
