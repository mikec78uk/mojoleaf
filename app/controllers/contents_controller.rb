class ContentsController < ApplicationController

	def home
	
		@quote = Content.offset(rand(Content.count)).first

	end
	
	def cookie_policy
		render
	end

	def privacy_policy
		render
	end


	def terms_of_service
		render
	end




end
