default['laravel-artisan']['queue']['worker_name'] = 'laravel-worker'
default['laravel-artisan']['queue']['autostart'] = true
default['laravel-artisan']['queue']['autorestart'] = true
default['laravel-artisan']['queue']['redirect_stderr'] = true
default['laravel-artisan']['queue']['user'] = 'www-data'
default['laravel-artisan']['queue']['stdout_logfile'] = "/var/log/supervisor/#{node['laravel-artisan']['queue']['worker_name']}.log"
default['laravel-artisan']['queue']['numprocs'] = 1