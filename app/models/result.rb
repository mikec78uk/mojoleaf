class Result < ActiveRecord::Base
		has_and_belongs_to_many :tests
		has_many :options
end
