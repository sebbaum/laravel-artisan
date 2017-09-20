#
# Cookbook:: laravel-artisan
# Recipe:: route_clear
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

COMMAND = 'route:clear'

execute "php artisan #{COMMAND}" do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} #{COMMAND} #{node['laravel-artisan']['verbosity']}"
  action :run
end