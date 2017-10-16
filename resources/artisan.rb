

resource_name :artisan

default_action :run

property :command, String, name_property: true
property :check, [true, false], default: true
property :path, String, required: true
property :verbosity, String, default: '-v'

action_class do

	# Check if artisan file exists at given path
	def artisan_exists
		::File.exists?("#{new_resource.path}/artisan")
	end

end

# Run action
action :run do

	# Check if the artisan file exists at the given location
	if new_resource.check
		unless artisan_exists
			raise(Exception, "No artisan file at the given locatation: #{new_resource.path}")
		end

		# Log that all checks have passed
		log 'checking laravel artisan prerequisits' do
			message 'Laravel artsan prerequisits check [SUCCESS]'
		end
	end

	# Execute the artisan command
	execute "php artisan #{new_resource.command}" do
	  command "php #{new_resource.path}/artisan #{new_resource.command} #{new_resource.verbosity}"
	  only_if { artisan_exists }
	end

end