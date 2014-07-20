%w[
  git
  wget
  curl
  ack
  python-software-properties
  python-setuptools
  autoconf
  bison
  flex
  libyaml-dev
  libreadline-dev
  libtool
  make
  build-essential
  binutils-doc
  vim
  subversion
  htop
  sysstat
  zip
  protobuf-compiler
  libprotobuf-dev
  libgeos-dev
  python-dev
  python-psycopg2
  
].each do |pkg|
  package pkg do
    action :install
  end
end

directory "/apps" do
  owner node[:user]
  group node[:user]
  mode 0775
  action :create
end

directory "/apps/log" do
  owner node[:user]
  group node[:user]
  mode 0775
  action :create
end

directory "/apps/tmp" do
  owner node[:user]
  group node[:user]
  mode 0775
  action :create
end

directory "/apps/data" do
  owner node[:user]
  group node[:user]
  mode 0775
  action :create
end
