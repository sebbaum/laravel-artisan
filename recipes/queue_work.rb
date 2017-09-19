#
# Cookbook:: laravel-artisan
# Recipe:: queue_work
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

### Install and prepare supervisor
include_recipe 'laravel-artisan::supervisor'

template "create supervisor conf for #{node['laravel-artisan']['queue']['worker_name']}" do
  source 'supervisor.conf.erb'
  path "#{node['laravel-artisan']['supervisor']['conf_dir']}/#{node['laravel-artisan']['queue']['worker_name']}.conf"
  owner 'root'
  group 'root'
  mode '0644'
  variables node['laravel-artisan']['queue']
end

service 'stop supervisor' do
  service_name 'supervisor'
  supports :stop => true, :status => true, :restart => true, :reload => true
  action :stop
end

service 'start supervisor' do
  service_name 'supervisor'
  supports :start => true, :status => true, :restart => true, :reload => true
  action :start
end
