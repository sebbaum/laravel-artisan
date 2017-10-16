#
# Cookbook:: laravel-artisan
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Run the php artisan command with the `help` argument in order to print the help
# and check that the path to the executable is set properly.


artisan 'list' do
	path node['laravel-artisan']['path']
end
