Transmission BT Ansible Role
============================

[![Build status](https://img.shields.io/travis/elboletaire/ansible-transmission.svg?style=flat-square)](https://travis-ci.org/elboletaire/ansible-transmission)
[![Ansible galaxy](https://img.shields.io/ansible/role/5518.svg?style=flat-square)](https://galaxy.ansible.com/list#/roles/5518)

Ansible role for installing and configuring [Transmission](http://www.transmissionbt.com/).

Requirements
------------

Debian based system.

Installing
----------

You can easily install this role using `ansible-galaxy`:

```bash
ansible-galaxy install elboletaire.transmission -p roles
```

Variables
---------

There are no mandatory variables.

### Web interface & RPC

| Variable                             | Default                 |
| ------------------------------------ | ----------------------- |
| `transmission_password`              |                         |
| `transmission_rpc_auth_required`     | `false`                 |
| `transmission_user`                  | `{{ ansible_user_id }}` |
| `transmission_rpc_whitelist_enabled` | `false`                 |
| `transmission_rpc_whitelist`         | `127.0.0.1`             |
| `transmission_url`                   | `/transmission/`        |

### Folders

| Variable                              | Default                              |
| ------------------------------------- | ------------------------------------ |
| `transmission_download_dir`           | `{{ ansible_env.HOME }}/downloads`   |
| `transmission_umask`                  | `2`                                  |
| `transmission_watch_dir_enabled`      | `true`                               |
| `transmission_watch_dir`              | `{{ ansible_env.HOME }}/torrents`    |
| `transmission_incomplete_dir_enabled` | `false`                              |
| `transmission_incomplete_dir`         | `{{ ansible_env.HOME }}/.incomplete` |

### Speed limits & ratio

| Variable                               | Default |
| ---------------------------------------| ------- |
| `transmission_speed_limit_up_enabled`  | `false` |
| `transmission_speed_limit_up`          | `100`   |
| `transmission_speed_limit_down_enabled`| `false` |
| `transmission_speed_limit_down`        | `100`   |
| `transmission_ratio_limit_enabled`     | `false` |
| `transmission_ratio_limit`             | `2`     |

### Blocklist

| Variable                         | Default                            |
| -------------------------------- | ---------------------------------- |
| `transmission_blocklist_enabled` | `false`                            |
| `transmission_blocklist_url`     | `http://www.example.com/blocklist` |

Please, refer to the
[transmission documentation](https://trac.transmissionbt.com/wiki/EditConfigFiles)
to better understand this variables.

Example Playbook
----------------

A very simple example:

```yaml
- hosts: all
  roles:
    - role: transmission
      sudo: yes
```

A bit more complex example:

```yaml
- hosts: all
  roles:
    - role: transmission
      sudo: yes
      transmission_user: Krilin
      transmission_password: Bu1m4
      transmission_rpc_auth_required: true
      transmission_rpc_whitelist_enabled: true
      transmission_rpc_whitelist: "127.0.0.1,192.168.1.*"
```

License
-------

    The MIT License (MIT)

    Copyright (c) 2015 Oscar Casajuana <elboletaire at underave dot net>

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
