#
# Cookbook:: laravel-artisan
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Run the php artisan command with the `help` argument in order to print the help
# and check that the path to the executable is set properly.


### Check if the path to the artisan file is given
if node['laravel-artisan']['path'].empty?
  raise(Exception, 'Missing path to artisan file!');
end

### Check if the artisan file exists at the given location
unless File.exists?("#{node['laravel-artisan']['path']}/artisan")
	raise(Exception, "No artisan file at the given locatation: #{node['laravel-artisan']['path']}")
end

### Log that all checks have passed
log 'checking laravel artisan prerequisits' do
	message 'Laravel artsan prerequisits check [SUCCESS]'
end
