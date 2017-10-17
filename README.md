# Laravel-Artisan Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/laravel-artisan.svg)](https://supermarket.chef.io/cookbooks/laravel-artisan) [![Github Release](https://img.shields.io/github/release/sebbaum/laravel-artisan.svg)](https://github.com/sebbaum/laravel-artisan/releases) [![Github Issues](https://img.shields.io/github/issues/sebbaum/laravel-artisan.svg)](https://github.com/sebbaum/laravel-artisan/issues) [![license](https://img.shields.io/github/license/sebbaum/laravel-artisan.svg)](https://github.com/sebbaum/laravel-artisan/blob/master/LICENSE)

Did you ever want to to run [Laravel's php artisan commands](https://laravel.com/docs/5.5/artisan) on an automated infrastructure? If you are using [Chef](https://www.chef.io/) then this cookbook is for you.

## Scope
This cookbook supports some of the artisan commands, that are useful on a load balanced server infrastructure.  
Commands that are particular useful for development are not supported.

### Supported commands:
* clear-compiled
* down
* env
* up
* cache:clear
* config:cache
* config:clear
* migrate:status
* package:discover
* queue:work
* route:cache
* route:clear
* schedule:run
* view:clear

## Requirements
* Chef 12.7 or higher

## Platform Support
This cookbook has been developed and used on Ubuntu 16.04.

## Environment Support
Supported Environments:
* Vagrant
* AWS Opsworks

## Cookbook Dependencies
Currently none.

## Usage
Place a dependency on the laravel-artisan cookbook in your cookbook's metadata.rb

```ruby
depends 'laravel-artisan'
```

or add the dependency in your Berksfile:  
```ruby
cookbook 'laravel-artisan'
```

Then, you can run the recipes using Chef's runlist. Right away this will throw an Exception. To get it work properly you have
to pass a path to the directory where the `artisan` file is located.

### Envirionment file
Passing the path to the artisan file via an environment file:
```json
{
  "name": "development",
  "description": "Vagrant Development Environment",
  "default_attributes": {
    "laravel-artisan": {
      "path": "<path-to-artisan-file>"
    }
  },
  "json_class": "Chef::Environment",
  "chef_type": "environment"
}
```

### AWS Opsworks
Using AWS Opsworks you can pass in the path via custom json:
```json
{
  "laravel-artisan": {
    "path": "<path-to-artisan-file>"
  }
}
```

## Recipes
* `laravel-artisan::clear-compiled`	  -	Remove the compiled class file
* `laravel-artisan::down` 				    - Put the application into maintenance mode.
* `laravel-artisan::env`				      - Display the current framework environment.
* `laravel-aritsan::up` 				      - Bring the application out of maintenance mode.
* `laravel-artisan::cache_clear`		  - Flush the application cache.
* `laravel-artisan::config_cache`		  - Create a cache file for faster configuration loading.
* `laravel-artisan::config_clear`		  - Remove the configuaration cache file.
* `laravel-artisan::migrate_status`   - Show the status of each migration.
* `laravel-artisan::package_discover` -	Rebuild the cached package manifest.
* `laravel-artisan::queue_work`       - Start processing jobs on the queue as a daemon.
* `laravel-artisan::queue_stop`       - Stop processing jobs on the queue as a daemon.
* `laravel-artisan::route_cache`      - Create a route cache file for faster route registration
* `laravel-artisan::route_clear`      - Remove the route cache file.
* `laravel-artisan::schedule_run`		  - Run the scheduled commands.
* `laravel-artisan::schedule_stop`    -	Remove the cronjob that runs `php artisan schedule:run`
* `laravel-artisan::view_clear`			  - Clear all compiled view files.

## Resources

### artisan
Use this resource to run artisan cammands in other cookbooks.

#### Actions
* `run` - Run an artisan command

#### Properties
* `path` - (required) Path where the artisan file is located.
* `command` - (optional) Artisan command that should be run. By default it's assumed that the name of the artisan resource is the command, but this allows overriding that.
* `check` - (optional) By default it is checked, that there is an artisan file at the given `path`. However this check can be disabled.
* `verbosity` - (optional) Configure how verbos the artisan command should be. Default is '-v'.

### artisan_schedule

#### Actions
* `create` - Create a cron entry to run the artisan schedule:run command.
* `remove` - Remove the cron entry to stop the artisan schedule:run command.

#### Properties
* `path` - (required) Path where the artisan file is located.
* `command` - (optional) Artisan command that should be run. By default it's assumed that the name of the artisan resource is the command, but this allows overriding that.
* `check` - (optional) By default it is checked, that there is an artisan file at the given `path`. However this check can be disabled.
* `verbosity` - (optional) Configure how verbos the artisan command should be. Default is '-v'.
* `user` - (optional) Choose the crontab of a user, who should run the command.

### artisan_queue

#### Actions
* `start` - Install supervisor and add a configuration that enables a supervised artisan queue:work command.
* `stop` - Stops the supervised artisan queue:work command.

#### Properties
* `worker_name` - (required) Name of the supervisor worker process
* `path` - (required) Path where the artisan file is located.
* `configuration` - (required) A Hash that contains the configuration for the supervisor configuration file.
* `conf_dir` - (optional) Directory where supervisor conf files are located. By default this is: `'/etc/supervisor/conf.d'`.
* `check` - (optional) By default it is checked, that there is an artisan file at the given `path`. However this check can be disabled.
* `verbosity` - (optional) Configure how verbos the artisan command should be. Default is '-v'.
* `owner`- (optional) Owner of the configuration file. By default this is `'root'`.
* `group`- (optional) Group of the configuration file. By default this is `'root'`.
* `mode`- (optional) Mode of the configuration file. By default this is `'0644'`.


## License and Authors

Author:: Sebastian Baum (seb.baum@googlemail.com)