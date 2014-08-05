#yum_package "mod_geoip GeoIP GeoIP-devel GeoIP-data" do
yum_package "mod_geoip" do
  arch "x86_64"
  action :install
 end

#service "gibapache" do
#  action :restart
#end
