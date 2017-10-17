#
# Cookbook:: laravel-artisan
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'list' do
	path node['laravel-artisan']['path']
end
