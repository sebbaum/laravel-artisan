module Artisan
	module Check

		def artisan_exists
			::File.exists?("#{new_resource.path}/artisan")
		end

		# Throw an Exception if artisan file does not exist.
		def check_artisan
			if new_resource.check
				unless artisan_exists
					raise(Exception, "No artisan file at the given locatation: #{new_resource.path}")
				end

				# Log that all checks have passed
				log 'checking laravel artisan prerequisits' do
					message 'Laravel artisan prerequisits check [SUCCESS]'
				end
			end
		end
	end
end
