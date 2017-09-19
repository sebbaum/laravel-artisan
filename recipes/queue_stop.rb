#
# Cookbook:: laravel-artisan
# Recipe:: queue_stop
#
# Copyright:: 2017, The Authors, All Rights Reserved.

### Remove the supervisor configuration for queue:work
file "remove supervisor conf for #{node['laravel-artisan']['queue']['worker_name']}" do
  path "#{node['laravel-artisan']['supervisor']['conf_dir']}/#{node['laravel-artisan']['queue']['worker_name']}.conf"
  action :delete
end

### Stop supervisor
service 'stop supervisor' do
  service_name 'supervisor'
  action :stop
end

### Start supervisor
service 'start supervisor' do
  service_name 'supervisor'
  action :start
end

