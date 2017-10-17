#
# Cookbook:: laravel-artisan
# Recipe:: config:clear
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'config:clear' do
	path node['laravel-artisan']['path']
end