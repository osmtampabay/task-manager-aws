git "osm-tasking-manager for #{node[:user]}" do
  repository "git://github.com/hotosm/osm-tasking-manager2.git"
  reference 'master'
  destination "/apps/osm-tasking-manager"
  action :checkout
  enable_submodules true
  user node[:user]
end

easy_install_package "virtualenv" do
  action :install
end

