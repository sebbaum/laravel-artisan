resource_name :artisan

property :path, String, required: true
property :command, String, name_property: true
property :check, [true, false], default: true
property :verbosity, String, default: '-v'
#property :user, String, default: 'root'

default_action :run

action_class do

	include Artisan::Check

end

### Run action
action :run do

	### Check if artisan file exists
	check_artisan

	### Execute the artisan command
	execute "php artisan #{new_resource.command}" do
	  command "php #{new_resource.path}/artisan #{new_resource.command} #{new_resource.verbosity}"
	  only_if { artisan_exists }
	end

end