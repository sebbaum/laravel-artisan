
test_res 'my resource' do

end

test_res 'my resource 2' do
	message 'run test'
end

# artisan 'down'

# artisan 'example' do
#	action :run # default :run
#	check false # default: true
#	command 'up' # == name
#	path node['laravel-artisan']['path'] # required
#	verbosity '-v' # default '-v'
# end