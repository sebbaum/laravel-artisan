#
# Cookbook:: laravel-artisan
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Run the php artisan command with the `help` argument in order to print the help
# and check that the path to the executable is set properly.
execute 'php artisan help' do
  cwd node['laravel-artisan']['path']
  command "#{node['laravel-artisan']['call']} help #{node['laravel-artisan']['verbosity']}"
  action :run
end