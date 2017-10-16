#
# Cookbook:: laravel-artisan
# Recipe:: route_clear
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'route:clear' do
	path node['laravel-artisan']['path']
end