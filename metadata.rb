name 'laravel-artisan'
maintainer 'Sebastian Baum'
maintainer_email 'seb.baum@googlemail.com'
license 'Apache-2.0'
description "Run laravel's artisan commands"
long_description "Run laravel's artisan commands on remote nodes"
version '1.0.1'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'ubuntu', '= 16.04'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/sebbaum/laravel-artisan/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/sebbaum/laravel-artisan'
