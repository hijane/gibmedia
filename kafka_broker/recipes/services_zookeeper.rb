  template "/etc/init.d/zookeeper" do
    source "zookeeper_init_script.erb"
    mode "0755"
    variables({install_dir: node['kafka_broker']['install_dir']})
  end

  service "zookeeper" do
    supports :restart => true, :reload => true
    action [:start, :enable]
  end
