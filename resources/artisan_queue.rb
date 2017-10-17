resource_name :artisan_queue

property :worker_name, String, required: true
property :conf_dir, String, default: '/etc/supervisor/conf.d'
property :configuration, Hash, required: true
property :owner, String, default: 'root'
property :group, String, default: 'root'
property :mode, String, default: '0644'
property :path, String, required: true
property :check, [true, false], default: true

default_action :start

action_class do

	include Artisan::Check

end

action :start do

	### Check if artisan file exists
	check_artisan

	### Install supervisor
	package 'supervisor' do
  		action :install
	end

	### Create a configuration file
	template "create supervisor conf for #{new_resource.worker_name}" do
		source 'supervisor.conf.erb'
		path "#{new_resource.conf_dir}/#{new_resource.worker_name}.conf"
		owner new_resource.owner
		group new_resource.group
		mode new_resource.mode
		variables(
			:worker_name => new_resource.worker_name,
			:path => new_resource.path,
			:config => new_resource.configuration
		)
			
	end

	### Restart supervisor
	service 'restart supervisor' do
		service_name 'supervisor'
	  	action :restart
	end
	
end

action :stop do

	### Remove the supervisor configuration for queue:work
	file "remove supervisor conf for #{new_resource.worker_name}" do
	  path "#{new_resource.conf_dir}/#{new_resource.worker_name}.conf"
	  action :delete
	end

	### Restart supervisor
	service 'stop supervisor' do
	  service_name 'supervisor'
	  action :restart
	end

end