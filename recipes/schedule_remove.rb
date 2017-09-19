#
# Cookbook:: laravel-artisan
# Recipe:: schedule_remove
#
# Copyright:: 2017, The Authors, All Rights Reserved.

### Remove the crontab entry for the scheduler
cron "laravel-scheduler" do 
    action :delete
 end