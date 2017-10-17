#
# Cookbook:: laravel-artisan
# Recipe:: route_cache
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'route:cache' do
	path node['laravel-artisan']['path']
end