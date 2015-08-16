#  Playbook
## Transmission

Installs [Transmission](http://www.transmissionbt.com/) daemon directly from transmissionbt apt source.

## Variables

### Apt state

* transmission.apt_state [latest]

### Web interface & RPC

* transmission.user
* transmission.passwd
* transmission.rpc_whitelist_enabled [false]
* transmission.rpc_whitelist [127.0.0.1]

### Folders

* transmission.download_dir
* transmission.umask
* transmission.watch_dir_enabled
* transmission.watch_dir
* transmission.incomplete_dir_enabled
* transmission.incomplete_dir
