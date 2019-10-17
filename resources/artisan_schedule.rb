resource_name :artisan_schedule

property :path, String, required: true
property :command, String, name_property: true
property :check, [true, false], default: true
property :verbosity, String, default: '-v'
property :user, String, default: 'root'

default_action :create

action_class do

	include Artisan::Check

end

### Create the laravel artisan scheduler
action :create do

	check_artisan

	### Add crontab entry
	cron "laravel-scheduler" do
		minute '*'
    	hour '*'
    	day '*'
    	month '*'
    	weekday '*'
    	command "cd #{new_resource.path} && php artisan #{new_resource.command}"
    	user new_resource.user
    	action :create
    end

end

### Remove the laravel artisan scheduler
action :delete do

	### Remove crontab entry
	cron "laravel-scheduler" do 
		user new_resource.user
    	action :delete
    end

end