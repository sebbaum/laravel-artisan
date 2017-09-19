#
# Cookbook:: laravel-artisan
# Recipe:: queue:work
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#include_recipe 'laravel-artisan::default'

### Install and prepare supervisor
include_recipe 'laravel-artisan::supervisor'


COMMAND = 'queue:work'

# TODOs
# - Add a supervisor config for php artisan queue:work
# - Start supervisor
