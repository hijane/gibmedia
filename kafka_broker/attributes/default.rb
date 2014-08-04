default['kafka_broker']['version'] = '0.8.1.1'
default['kafka_broker']['scala_version'] = '2.9.2'

default['kafka_broker']['tarball_url'] = "http://apache.spinellicreations.com/kafka/#{node['kafka_broker']['version']}/kafka_#{node['kafka_broker']['scala_version']}-#{node['kafka_broker']['version']}.tgz"

default['kafka_broker']['install_dir'] = "/opt/kafka"

default['kafka_broker']['kafka_heap_opts'] = "-Xmx512M -Xms512M"

