# Laravel-Artisan Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/laravel-artisan.svg)](https://img.shields.io/cookbook/v/laravel-artisan.svg) [![Github Release](https://img.shields.io/github/release/sebbaum/laravel-artisan.svg)](https://img.shields.io/github/release/sebbaum/laravel-artisan.svg) [![Github Issues](https://img.shields.io/github/issues/sebbaum/laravel-artisan.svg)](https://img.shields.io/github/issues/sebbaum/laravel-artisan.svg) [![license](https://img.shields.io/github/license/sebbaum/laravel-artisan.svg)](https://img.shields.io/github/license/sebbaum/laravel-artisan.svg)

Did you ever want to to run [Laravel's php artisan commands](https://laravel.com/docs/5.5/artisan) on an automated infrastructure? If you are using [Chef](https://www.chef.io/) then this cookbook is for you.

## Scope
This cookbook supports some of the artisan commands, that are useful on a load balanced server infrastructure.  
Commands that are particular useful for development are not supported.

### Supported commands:
* down
* up
* ... and more to come

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
Place a dependency on the mysql cookbook in your cookbook's metadata.rb

```ruby
depends 'mysql', '~> 8.0'
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

  "laravel-artisan": {
    "path": "<path-to-artisan-file>"
  }
}
```