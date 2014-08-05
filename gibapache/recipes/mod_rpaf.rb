remote_file "/opt/scalr-release-2-1.noarch.rpm" do
    source "http://rpm.scalr.net/rpm/scalr-release-2-1.noarch.rpm"
    mode "0644"
 end

package "scalr" do
    action :install
    source "/opt/scalr-release-2-1.noarch.rpm"
    provider Chef::Provider::Package::Rpm
end

yum_package "mod_rpaf" do
    action :install
    flush_cache [:before]
end
        
cookbook_file "/etc/httpd/conf.d/mod_rpaf.conf" do
    source "mod_rpaf.conf"
    mode 0755
    owner "root"
    group "root"
end

#service "gibapache" do
#  action :restart
#end
