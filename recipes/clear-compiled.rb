#
# Cookbook:: laravel-artisan
# Recipe:: clear-compiled
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'clear-compiled' do
	path node['laravel-artisan']['path']
end