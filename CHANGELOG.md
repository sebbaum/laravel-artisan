# Laravel-Artisan Cookbook Changelog

## 1.0.2
* Fixed path to artisan file in schedule run command. [#2](https://github.com/sebbaum/laravel-artisan/pull/2)

## 1.0.1
* Adding some config params for supervisor [#1](https://github.com/sebbaum/laravel-artisan/pull/1)

## 1.0.0
* Introduced a custom resource to run custom artisan cammands.
* Introduced a custom resource for laravel artisan queues.
* Introduced a custom resource for laravel artisan schedule.
* Refactored all recipes to use the new custom resource.

## 0.6.0
* Added support for `php artisan route cache`
* Added support for `php artisan route clear`

## 0.5.1
* Added missing changelog for 0.5.0 features

## 0.5.0
* Added support of `php artisan migrate:status`
* Added support of `php artisan queue:work`

## 0.4.0
* Added support of `php artisan schedule:run`
* Added a possibility to disable running of `php artisan schedule:run`

## 0.3.0
* Added support of `php artisan cache:clear`
* Added support of `php artisan config:cache`
* Added support of `php artisan config:clear`
* Added support of `php artisan clear-compiled`
* Added support of `php artisan env`
* Added support of `php artisan package:discover`
* Extracted each `php artisan` command in a variable.


## 0.2.0
* Checking existance of the artisan file.
* Added documentation and other required files.

## 0.1.0
* Initial setup of the cookbook
* Added support of `php artisan down`
* Added support of `php artisan up`
