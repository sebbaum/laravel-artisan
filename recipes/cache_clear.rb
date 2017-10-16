#
# Cookbook:: laravel-artisan
# Recipe:: cache_clear
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'cache:clear' do
	path node['laravel-artisan']['path']
end