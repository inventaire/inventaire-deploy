# media storage

For media storage, we use an OpenStack Swift provider, currently OVH, with 3 containers (`assets`, `entities`, `users`) replicated between 2 regions ([learning from previous mistakes](https://twitter.com/olesovhcom/status/1369478732247932929)).

## OpenStack Swift

The best way to manipulate objects in the containers is the python swift client:
```sh
sudo apt-get install python-swiftclient -y
```

Load the environment from the config file which can be downloaded from the provider, see:
- https://docs.ovh.com/fr/public-cloud/charger-les-variables-denvironnement-openstack/
- https://www.ovh.com/manager/public-cloud/index.html#/pci/projects/5897bfd533bf4d3ca0a0522046f9f535/users

```sh
source ./openrc.sh
# List containers in the ENV REGIONS
swift list
# Create a container with the content of the current folder
swift upload testcontainer .
# Make that new container public
swift post --read-acl '.r:*,.rlistings' testcontainer
```

To created the replicated containers:
* load the config for that other region
```
source ./openrc_backup.sh
```
* re-create the empty containers on the secondary location
```
swift upload testcontainer .
swift post --read-acl '.r:*,.rlistings' testcontainer
```
* Follow this [tutorial](https://docs.ovh.com/gb/en/public-cloud/sync-object-containers/) to set the sync key on those containers on both regions, and start synchronizing.
