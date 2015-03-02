# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # All Vagrant configuration is done here. The most common configuration
    # options are documented and commented below. For a complete reference,
    # please see the online documentation at vagrantup.com.

    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = '/root/soe/vagrant/files/trusty-server-cloudimg-amd64-vagrant-disk1.box'

    config.vm.define 'epsdev' do |box|
        box.vm.host_name = 'epsdev.net'
        box.vm.network 'private_network', ip: '192.168.50.240'

        box.vm.provider 'virtualbox' do |v|
          v.customize ['setextradata', :id, 'VBoxInternal/Devices/pcbios/0/Config/DmiSystemSerial', 'FVQ2M1S']
        end
    end

    # Enable provisioning with chef solo, specifying a cookbooks path, roles
#   # path, and data_bags path (all relative to this Vagrantfile), and adding
#     # some recipes and/or roles.
    config.vm.provision :chef_solo do |chef|
        chef.roles_path = "chef/roles"
        chef.cookbooks_path = ["chef/site-cookbooks", "chef/cookbooks"]
        chef.add_role "eps-dev"
    end

end
