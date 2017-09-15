#
# Cookbook:: laravel-artisan
# Recipe:: up
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

execute 'php artisan up' do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} up #{node['laravel-artisan']['verbosity']}"
  action :run
end