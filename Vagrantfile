# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "defaut"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box" 
  config.vm.network :forwarded_port, guest: 8080, host: 8080 
  config.vm.network :forwarded_port, guest: 1521, host: 1521 
  config.vm.provision "shell", path: "install-ora-xe-10g-u.sh"
  config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
