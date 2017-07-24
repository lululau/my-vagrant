Vagrant.configure('2') do |config|
  config.vm.box = 'LX-CentOS'
  config.vm.box_check_update = false
  if Vagrant.has_plugin?('vagrant-timezone')
    config.timezone.value = 'Asia/Shanghai'
  end

  config.vm.network 'private_network', ip: '172.28.128.13'
  # config.vm.network "public_network", :type => 'dhcp', :bridge => 'en0: Wi-Fi (AirPort)'
  # config.vm.provision 'shell', path: './scripts/main.sh'
  config.vm.synced_folder '.', '/home/vagrant/sync', type: 'virtualbox'
end
