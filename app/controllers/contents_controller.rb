class ContentsController < ApplicationController

	def home
		
		#if user_signed_in?
		#	redirect_to tests_path
		#else
			@quote = Content.offset(rand(Content.count)).first
			render
		#end



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
