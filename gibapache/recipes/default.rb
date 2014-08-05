#
# Cookbook Name:: gibapache
# Recipe:: default
#
# Copyright 2013, Gibmedia
#
# All rights reserved - Do Not Redistribute
#
include_recipe "php"

%w{httpd.x86_64 httpd-devel.x86_64 pcre}.each do |pack|
yum_package "#{pack}" do
  action :install
 end
end

service "gibapache" do
  service_name "httpd"
  restart_command "/sbin/service httpd restart && sleep 1"
  reload_command "/sbin/service httpd reload && sleep 1"
  supports [:restart, :reload, :status]
  action :enable
end

#service "gibapache" do
#  action :start
#end
