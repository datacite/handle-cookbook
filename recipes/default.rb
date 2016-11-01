include_recipe 'java'

# root directory for handle server
directory node['handle']['dir'] do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

# download source code
tarball = "hsj-#{node['handle']['version']}.tar.gz"
download_url = "http://www.handle.net/hnr-source/#{tarball}"

remote_file "#{node['handle']['dir']}/#{tarball}" do
  source download_url
  action :create_if_missing
  mode '0644'
end

# uncompress
execute "tar" do
  user "root"
  group "root"
  cwd node['handle']['dir']
  action :run
  command "tar xvzf #{tarball}"
  not_if{ ::File.directory?("#{node['handle']['dir']}/hsj-#{node['handle']['version']}") }
end

# install directory for handle server
directory "#{node['handle']['dir']}/#{node['handle']['server_name']}" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute "bin/hdl-setup-server #{node['handle']['dir']}/#{node['handle']['server_name']}" do
  cwd "#{node['handle']['dir']}/hsj-#{node['handle']['version']}"
  action :run
end

