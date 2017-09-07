Vagrant.configure('2') do |config|
  config.vm.box = 'centos/7'
  config.vm.box_check_update = false
  if Vagrant.has_plugin?('vagrant-timezone')
    config.timezone.value = 'Asia/Shanghai'
  end

  config.vm.network 'private_network', ip: '172.28.128.3'
  # config.vm.network "public_network", :type => 'dhcp', :bridge => 'en0: Wi-Fi (AirPort)'
  config.vm.provision 'shell', path: './scripts/main.sh'
  config.vm.synced_folder '.', '/home/vagrant/sync', type: 'virtualbox'
  config.vm.provider :virtualbox do |v|
    v.customize ['modifyvm', :id, '--memory', 512]
    # v.customize ['modifyvm', :id, '--memory', 2048]
  end
end
