Transmission BT Ansible Role
============================

Installs [Transmission](http://www.transmissionbt.com/) daemon directly from apt
source.

Requirements
------------

Debian based system.

Variables
---------

### Web interface & RPC

* transmission_user
* transmission_passwd
* transmission_rpc_whitelist_enabled [false]
* transmission_rpc_whitelist [127.0.0.1]

### Folders

* transmission_download_dir
* transmission_umask
* transmission_watch_dir_enabled
* transmission_watch_dir
* transmission_incomplete_dir_enabled
* transmission_incomplete_dir

Example Playbook
----------------

    - hosts: servers
      roles:
        - {
            role: transmission,
            sudo: yes,
            transmission_user: Krilin
          }


License
-------

    The MIT License (MIT)

    Copyright (c) 2015 Òscar Casajuana <elboletaire at underave dot net>

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
