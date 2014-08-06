if node['kafka_broker']['broker_id'].nil? || node['kafka_broker']['broker_id'].empty?
node.set['kafka_broker']['broker_id'] = node[:ipaddress].gsub(".","")
end

if node['kafka_broker']['broker_host_name'].nil? || node['kafka_broker']['broker_host_name'].empty?
node.set['kafka_broker']['broker_host_name'] = node[:ec2][:public_hostname]
end

log "Broker id: #{node['kafka_broker']['broker_id']}"
log "Broker name: #{node['kafka_broker']['broker_host_name']}"


base_install_dir = File.dirname(node['kafka_broker']['install_dir'])
tarball_file_base = "kafka_#{node['kafka_broker']['scala_version']}-#{node['kafka_broker']['version']}"
tarball_file = "#{tarball_file_base}.tar.gz"
tarball_file_path = "#{base_install_dir}/#{tarball_file}"

remote_file tarball_file_path do
  source node['kafka_broker']['tarball_url']
  action :create_if_missing
end

execute 'unzip kafka source' do
  command "tar -zxvf #{tarball_file}"
  cwd base_install_dir
end

link node['kafka_broker']['install_dir'] do
  to "#{base_install_dir}/#{tarball_file_base}"
end

directory "#{node['kafka_broker']['install_dir']}/logs"

file tarball_file_path do
  action :delete
end

