#
# Cookbook:: laravel-artisan
# Recipe:: queue:work
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

## install pip first
package 'python-pip' do
  action :install
end

#bash 'install something' do
#  user 'root'
#  cwd '/tmp'
#  code <<-EOH
#  
#  EOH
#end

execute 'install supervisor' do
  command 'pip install supervisor'
  action :run
end

COMMAND = 'queue:work'

#supervisord_program "php artisan #{COMMAND} as a supervisor service" do
#	name 'laravel-queue'
#	command "#{node['laravel-artisan']['path']} #{node['laravel-artisan']['call']} #{COMMAND} #{node['laravel-artisan']['verbosity']}"
#	action [:supervise, :start]
#end


#execute "php artisan #{COMMAND}" do
#  cwd node['laravel-artisan']['path']
#  command "#{node['laravel-artisan']['call']} #{COMMAND} #{node['laravel-artisan']['verbosity']}"
#  action :run
#end