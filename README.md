### Hexlet tests and linter status:
[![Actions Status](https://github.com/sdorodniy/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/sdorodniy/devops-for-programmers-project-76/actions)

Site: [sdorodniy.site](https://sdorodniy.site/)

## Prerequisites

* Ansible
* Make
* Run command to generate ansible vault password file:
```bash
PASSWORD=<password> make prepare-vault
```
* Put SSL certificates in _ssl_ die, files should be named:
    * fullchain.pem
    * privkey.pem
* Install Ansible dependecies:
```bash
make install
```

## Commands

* Prepare servers:
```bash
make prepare
```
* Deploy app on servers:
```bash
meke deploy
```
