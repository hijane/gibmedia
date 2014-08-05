default['kafka_broker']['version'] = '0.8.1.1'
default['kafka_broker']['scala_version'] = '2.9.2'

default['kafka_broker']['tarball_url'] = "http://apache.spinellicreations.com/kafka/#{node['kafka_broker']['version']}/kafka_#{node['kafka_broker']['scala_version']}-#{node['kafka_broker']['version']}.tgz"

default['kafka_broker']['install_dir'] = "/opt/kafka"
default['kafka_broker']['log_dir'] = "/opt/kafka-logs"

default['kafka_broker']['kafka_heap_opts'] = "-Xmx1G -Xms1G"

default[:kafka_broker][:chroot_suffix] = "brokers"

default[:kafka_broker][:num_partitions] = 2
default['kafka_broker']['broker_id'] = nil
default['kafka_broker']['broker_host_name'] = nil
default[:kafka_broker][:port] = 9092
default[:kafka_broker][:threads] = nil
default[:kafka_broker][:log_flush_interval] = 10000
default[:kafka_broker][:log_flush_time_interval] = 1000
default[:kafka_broker][:log_flush_scheduler_time_interval] = 1000
default[:kafka_broker][:log_retention_hours] = 168
default[:kafka_broker][:zk_connectiontimeout] = 10000
