# -*- mode: ruby -*-
# # vi: set ft=ruby :
#
# # Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
        config.vm.box = "centos/7"

        config.vm.network :private_network, ip: "192.168.56.100"
        #config.ssh.username = "vagrant"
        #config.ssh.password = "vagrant"

        config.vm.provider :virtualbox do |v|
                #v.customize ["modifyvm", :id, '--chipset', 'ich9'] # solves kernel panic issue on some host machines
                v.customize ["modifyvm", :id, "--name", "localdev-ansible"]
                #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
                v.customize ["modifyvm", :id, "--memory", 1024] #1024mb memory
                #v.customize ["modifyvm", :id, "--ioapic", "on"]
        end

end


