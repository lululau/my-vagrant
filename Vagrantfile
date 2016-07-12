Vagrant.configure("2") do |config|
  # config.vm.box = "hashicorp/precise64"
  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  if Vagrant.has_plugin?("vagrant-timezone")
    config.timezone.value = 'Asia/Shanghai'
  end
  # config.vm.network "public_network", :bridge => 'en0: Wi-Fi (AirPort)'
  config.vm.network "private_network", :type => 'dhcp'
  config.vm.provision "shell", :path => "./scripts/main.sh"
end
