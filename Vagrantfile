# -*- mode: ruby -*-
# vi: set ft=ruby :
#
Vagrant.configure("2") do |config|
    config.vm.provision :puppet

    config.vm.define "index-1" do |spl|
        spl.vm.box = "precise64"
        spl.vm.box_url = "http://files.vagrantup.com/precise64.box"
        spl.vm.hostname = "spl-index1"
        spl.vm.network :private_network,
            :ip => '192.168.10.11'
    end

    config.vm.define "index-2" do |spl|
        spl.vm.box = "precise64"
        spl.vm.box_url = "http://files.vagrantup.com/precise64.box"
        spl.vm.hostname = "spl-index2"
        spl.vm.network :private_network,
            :ip => '192.168.10.12'
    end

    config.vm.define "searchhead" do |spl|
        spl.vm.box = "precise64"
        spl.vm.box_url = "http://files.vagrantup.com/precise64.box"
        spl.vm.hostname = "spl-head"
        spl.vm.network :private_network,
            :ip => '192.168.10.13'
    end

end
