#
# Cookbook:: laravel-artisan
# Recipe:: view:clear
#
# Copyright:: 2017, The Authors, All Rights Reserved.

artisan 'view:clear' do
	path node['laravel-artisan']['path']
end