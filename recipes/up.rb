#
# Cookbook:: laravel-artisan
# Recipe:: up
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'up' do
	path node['laravel-artisan']['path']
end