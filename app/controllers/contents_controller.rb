class ContentsController < ApplicationController

	def home
	
		@quote = Content.offset(rand(Content.count)).first

	end
	


end
