class TestUser < ActiveRecord::Base

	belongs_to :test
	has_many :test_options

end
