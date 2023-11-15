Indicative steps to setup the alternative instance

Setup currently used for http://sandbox.inventaire.io

## Caracteristics

- docker install
- images local storage
- low performance oriented (default limits to leveldb or elastic are acceptable)
- no mailer, no prerender

## Install

Install [docker](https://docs.docker.com/engine/install/ubuntu/)

```sh
sudo apt-get install docker-compose -y

sudo apt-get install curl zsh git nginx graphicsmagick openssl inotify-tools software-properties-common fail2ban -y
```

Follow docker-inventaire install instructions: https://github.com/inventaire/docker-inventaire
```sh
curl https://raw.githubusercontent.com/inventaire/inventaire-deploy/master/aliases > ~/.aliases
curl https://raw.githubusercontent.com/inventaire/inventaire-deploy/master/zshrc > ~/.zshrc

curl https://raw.githubusercontent.com/inventaire/inventaire-deploy/master/nginx/inventaire.sandbox.nginx > /etc/nginx/sites-enabled/default

chown root:root sites-enabled/default

sudo service nginx start

sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx

echo "module.exports = {
  db: {
    username: 'couchdb',
    password: 'password'
  }
}
" > ~/docker-inventaire/inventaire/config/local.js

curljson -XPUT -s "http://couchdb:password@localhost:5984/_users"

cd docker-inventaire && sudo docker-compose restart inventaire

cd ~/docker-inventaire/inventaire/
mkdir -p storage/users storage/entities
mkdir -p /tmp/nginx/tmp /tmp/nginx/resize/img/users /tmp/nginx/resize/img/groups /tmp/nginx/resize/img/entities /tmp/nginx/resize/img/remote /tmp/nginx/resize/img/assets
```