#
# Cookbook:: laravel-artisan
# Recipe:: env
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'env' do
	path node['laravel-artisan']['path']
end
