#
# Cookbook:: laravel-artisan
# Recipe:: down
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'down' do
	path node['laravel-artisan']['path']
end