# Install and prepare supervisor
# 
# Cookbook:: laravel-artisan
# Recipe:: supervisor
#
# Copyright:: 2017, The Authors, All Rights Reserved.

### install pip first
package 'python-pip' do
  action :install
end

### Install supervisor via pip
execute 'install supervisor' do
  command 'pip install supervisor'
  action :run
end

### Create directory where all supervisor.conf files are stored.
directory 'create supervisor conf directory' do 
  path node['laravel-artisan']['supervisor']['conf_dir']
  recursive true
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

### Create the main config file
template 'create main supervisor config file' do
  source 'supervisor.conf.erb'
  path "#{node['laravel-artisan']['supervisor']['main_conf_dir']}/supervisor.conf"
  owner 'root'
  group 'root'
  mode '0644'
end

