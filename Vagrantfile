# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "dev14-1"
  config.vm.box_url = "https://dl.dropbox.com/u/14292474/vagrantboxes/precise64-ruby-1.9.3-p194.box"
  #config.vm.network :forwarded_port, guest: 8080, host: 9080

  config.vm.provision :chef_solo do |chef|
  #  chef.cookbooks_path = 'cookbooks'
  #  chef.add_recipe 'minitest-handler'
  #  chef.add_recipe 'java_ok'
  #  chef.add_recipe 'gradle'
  #  chef.add_recipe 'nodejs'
    chef.add_recipe 'phantomjs'
  #  chef.add_recipe 'webpos-ui-build'
  #  chef.add_recipe 'tomcat'
  end
end
