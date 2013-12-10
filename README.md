oracle-box
==========

This is a Vagrant file for 
  - Starting up an ubuntu box
  - Installing Oracle XE 10g universal
  - Setting up oracle

The system user will get *system* password. You may want to change that editing the `install-ora-xe-10g-u.sh` script.
You may also extend the provisioning script to create some users or load some data for example.

Usage
=====

```bash
$ git clone git@github.com:albans/oracle-box.git
$ cd oracle-box
$ vagrant up
```

Then you should be able to connect to  `system@localhost:1521`.
