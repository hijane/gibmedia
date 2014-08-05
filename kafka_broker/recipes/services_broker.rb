  template "#{node['kafka_broker']['install_dir']}/bin/kafka-server-start.sh" do
    source "kafka_broker_start_server.erb"
    mode "0775"
  end
  template "#{node['kafka_broker']['install_dir']}/config/server.properties" do
    source "server.properties.erb"
    mode "0664"
  end

  template "/etc/init.d/kafka_broker" do
    source "kafka_broker_init_script.erb"
    mode "0755"
    variables({install_dir: node['kafka_broker']['install_dir']})
  end

  service "kafka_broker" do
    supports :restart => true, :reload => true
    action [:restart, :enable]
  end
