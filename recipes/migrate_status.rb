#
# Cookbook:: laravel-artisan
# Recipe:: migrate_status
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'migrate:status' do
	path node['laravel-artisan']['path']
end