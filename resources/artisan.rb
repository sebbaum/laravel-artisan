

resource_name :artisan

default_action :run

property :command, String, name_property: true
property :check, [true, false], default: true
property :path, String, required: true
property :verbosity, String, default: '-v'

action_class do

	### Determine if artisan file exists at given path
	def artisan_exists
		::File.exists?("#{new_resource.path}/artisan")
	end

	# Throw an Exception if artisan file does not exist.
	def check_artisan
		if new_resource.check
			unless artisan_exists
				raise(Exception, "No artisan file at the given locatation: #{new_resource.path}")
			end

			# Log that all checks have passed
			log 'checking laravel artisan prerequisits' do
				message 'Laravel artisan prerequisits check [SUCCESS]'
			end
		end
	end

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

### Start the laravel artisan scheduler
action :start do

	check_artisan

	### Add crontab entry
	cron "laravel-scheduler" do
		minute '*'
    	hour '*'
    	day '*'
    	month '*'
    	weekday '*'
    	command "php #{new_resource.path}/artisan #{new_resource.command}"
    	action :create
    	user 'ubuntu'
    end

end

### Stop the laravel artisan scheduler
action :stop do	

	### Remove crontab entry
	cron "laravel-scheduler" do 
		user 'ubuntu'
    	action :delete
    end

end
