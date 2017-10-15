Vagrant.configure("2") do |config|
  config.vm.box = "opensuse/openSUSE-Tumbleweed-x86_64"

  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.verbose = "vvv"
  end
  config.vm.network "private_network", ip: "192.0.2.2"
end
