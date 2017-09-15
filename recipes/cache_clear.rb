#
# Cookbook:: laravel-artisan
# Recipe:: cache_clear
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

execute 'php artisan cache:clear' do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} cache:clear #{node['laravel-artisan']['verbosity']}"
  action :run
end