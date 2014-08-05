user "www" do
  supports :manage_home => true
  comment "www"
  uid 502
  gid "apache"
  home "/home/www"
  shell "/bin/bash"
end


directory node['gibapache']['docroot_dir'] do
    mode 00755
end

%w{gibproject sfproject html .ssh}.each do |dir|
directory "#{node['gibapache']['docroot_dir']}/#{dir}" do
    mode 00755
    owner node[:gibapache][:user]
    group node[:gibapache][:group]
    action :create
    recursive true
end
end

%w{web libs cache data}.each do |dir|
directory "#{node['gibapache']['docroot_dir']}/gibproject/#{dir}" do
    mode 00755
    owner node[:gibapache][:user]
    group node[:gibapache][:group]
    action :create
    recursive true
end
end

directory node['gibapache']['log_dir'] do
    mode 00755
    owner node[:gibapache][:user]
    group node[:gibapache][:group]
    action :create
end

directory "#{node['gibapache']['log_dir']}/vhosts/default" do
    mode 00755
    owner node[:gibapache][:user]
    group node[:gibapache][:group]
    action :create
    recursive true
end

directory "#{node['gibapache']['log_dir']}/vhosts" do
    mode 00755
    owner node[:gibapache][:user]
    group node[:gibapache][:group]
end

%w{vhosts sf}.each do |dir|
directory "#{node['gibapache']['ServerRoot']}/conf/#{dir}" do
    mode 00755
    action :create
    recursive true
end
end

cookbook_file "#{node['gibapache']['ServerRoot']}/conf/sf/vhosts.conf" do
  source "vhosts.conf"
  mode "0644"
end


template "/etc/httpd/conf/httpd.conf" do
  path "#{node['gibapache']['ServerRoot']}/conf/httpd.conf"
  source "httpd.conf.erb"
  owner "root"
group "root"
mode 00644
#  notifies :restart, "service[gibapache]"
end

service "gibapache" do
  action :start
end
