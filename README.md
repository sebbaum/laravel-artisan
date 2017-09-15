# Laravel-Artisan Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/laravel-artisan.svg)](https://img.shields.io/cookbook/v/laravel-artisan.svg) [![Github Release](https://img.shields.io/github/release/sebbaum/laravel-artisan.svg)](https://img.shields.io/github/release/sebbaum/laravel-artisan.svg) [![Github Issues](https://img.shields.io/github/issues/sebbaum/laravel-artisan.svg)](https://img.shields.io/github/issues/sebbaum/laravel-artisan.svg) [![license](https://img.shields.io/github/license/sebbaum/laravel-artisan.svg)](https://img.shields.io/github/license/sebbaum/laravel-artisan.svg)

Did you ever want to to run Laravel's php artisan commands on an automated infrastructure? If you are using Chef then this cookbook is for you.

## Scope
This cookbook supports some of the artisan commands, that are useful on a load balanced server infrastructure. Commands that are particular useful for development are not supported.

### Supported commands:
* down
* up
* cache:clear
* config:clear
* view:clear
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
