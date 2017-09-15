#
# Cookbook:: laravel-artisan
# Recipe:: down
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

execute 'php artisan down' do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} down #{node['laravel-artisan']['verbosity']}"
  action :run
end