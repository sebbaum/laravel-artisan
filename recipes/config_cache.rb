#
# Cookbook:: laravel-artisan
# Recipe:: config_cache
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'config:cache' do
	path node['laravel-artisan']['path']
end