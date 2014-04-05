class TestUser < ActiveRecord::Base

	belongs_to :test
	has_many :test_options


	# Check the uniquess of ip address and user agent
	#validates_uniqueness_of [:ip_address, :user_agent], uniqueness: {scope: :test_id} 

end
