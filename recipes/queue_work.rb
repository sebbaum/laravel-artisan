# Start a laravel queue worker process.
# 
# In order to run it as a service supervisor is installed and configured.
# For more details see:
# 	- https://laravel.com/docs/5.5/queues#supervisor-configuration
#
#
# Cookbook:: laravel-artisan
# Recipe:: queue_work
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan_queue 'supervise artisan queue' do
  worker_name node['laravel-artisan']['queue']['worker_name']
  path node['laravel-artisan']['path']
  configuration node['laravel-artisan']['queue']
  action :start
end
