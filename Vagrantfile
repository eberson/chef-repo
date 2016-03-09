Vagrant.configure(2) do |config|
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://proxy.houston.hpecorp.net:8080/"
    config.proxy.https    = "http://proxy.houston.hpecorp.net:8080/"
    config.proxy.no_proxy = "localhost,127.0.0.1,servbus"
  end

  config.vm.box = "opscode/ubuntu-15.04"
  #config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.10_chef-provisionerless.box"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "chef-study-vm"
  end

  #config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update --fix-missing
  #SHELL

  config.omnibus.chef_version = :latest
  #config.berkshelf.enabled = true
  #config.berkshelf.berksfile_path = './Berksfile'

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.chef.io/organizations/sde"
    chef.validation_key_path = ".chef/sde-validator.pem"
    chef.validation_client_name = "sde-validator"
    chef.node_name = "server"
  end
end