# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "hashicorp/precise64"
    config.vm.synced_folder "_html", "/var/www"
    config.vm.provision :shell, path: "postinstall.sh"
    config.vm.provision :shell, path: "_setup/shell/apache-php.sh"
    config.vm.provision :shell, privileged: false, path: "_setup/shell/node.sh"
    config.vm.provision :shell, privileged: false, path: "_setup/shell/java.sh"
    config.vm.provision :shell, privileged: false, path: "_setup/shell/composer.sh"
    config.vm.provision :shell, privileged: false, path: "_setup/shell/mysql.sh"
    config.vm.provision :shell, privileged: false, path: "_setup/shell/mysql-postinstall.sh"
    
    config.vm.network "private_network", ip: "192.168.30.16"

end
