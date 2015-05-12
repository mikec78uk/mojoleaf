class ContentsController < ApplicationController

	def home
		
		#if user_signed_in?
		#	redirect_to tests_path
		#else
			@test = "This is a lest"
			cookies[@test]= { :value => @test, :expires => 21.days.from_now }
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
