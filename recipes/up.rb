#
# Cookbook:: laravel-artisan
# Recipe:: up
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute 'php artisan up' do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} up #{node['laravel-artisan']['verbosity']}"
  action :run
end