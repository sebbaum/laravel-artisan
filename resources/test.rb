
resource_name :test_res

default_action :run

property :message, String, name_property: true

action :run do

	log 'logging' do
		message "Custom resource with value #{message}"
	end

end
