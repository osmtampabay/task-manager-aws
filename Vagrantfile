# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "osmtm"
  config.vm.box = "hashicorp/precise64"

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe "apt"
    chef.add_recipe "prerequisites"
    chef.add_recipe "osm-tasking-manager2"
    chef.json = { user: "vagrant" }
  end
end
