class Option < ActiveRecord::Base
	has_many :test_options

	def title
		option_name
	end
end
