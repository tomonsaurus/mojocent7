# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "centos/7"

  config.vm.network "private_network", ip: "192.168.33.20"

  config.vm.synced_folder ".", "/home/vagrant/sync" ,disabled: true


  config.vm.provision "shell", :path => "provision.sh", privileged: false



end
