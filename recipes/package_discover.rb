#
# Cookbook:: laravel-artisan
# Recipe:: package:discover
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'package:discover' do
	path node['laravel-artisan']['path']
end