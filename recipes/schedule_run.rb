#
# Cookbook:: laravel-artisan
# Recipe:: schedule:run
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'laravel-artisan::default'

COMMAND = 'schedule:run'

cron "laravel-scheduler" do
	minute '*'
    hour '*'
    day '*'
    month '*'
    weekday '*'
    command "php #{node['laravel-artisan']['path']}/artisan #{COMMAND} >> /dev/null 2>&1"
    action :create
end