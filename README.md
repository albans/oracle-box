oracle-box
==========

This is a Vagrant file for 
  - Starting up an ubuntu box
  - Installing **Oracle XE 10g R2 universal**
  - Setting up oracle

If you need **Oracle XE 11g** then you should have a look at [hilverd / vagrant-ubuntu-oracle-xe](https://github.com/hilverd/vagrant-ubuntu-oracle-xe) 
or [codescape / vagrant-oracle-xe](https://github.com/codescape/vagrant-oracle-xe) depending on the version of Ubuntu you want to use.
 
The password for the system user will be *system* unless you edit the provisioning script `install-ora-xe-10g-u.sh` to change it.
You may also extend the provisioning script to create some users or load some data for example.

Usage
=====

First make sure you have [Vagrant](http://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) installed.
Then you should clone the project and run `vagrant up` to start the virtual machine.

```bash
$ git clone git@github.com:albans/oracle-box.git
$ cd oracle-box
$ vagrant up
```

Then you should be able to connect to  `system@localhost:1521`.

Acknowledgements
================

For installing Oracle 10g on Ubuntu, I followed the instruction from the french Ubuntu community available [here](http://doc.ubuntu-fr.org/oracle). Although the direct installation process using `apt-get` isn't working anymore, the documentation provides an alternative installation procedure that is still working.
