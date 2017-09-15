#
# Cookbook:: laravel-artisan
# Recipe:: config_cache
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

COMMAND = 'config:cache'

execute "php artisan #{COMMAND}" do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} #{COMMAND} #{node['laravel-artisan']['verbosity']}"
  action :run
end