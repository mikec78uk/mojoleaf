class ResultsController < ApplicationController

	def index
		@test = Test.find(params[:test_id])
	end


	def show
		#@result = Test.find(params[:id])
		@test = Test.find(params[:test_id])
	end

	def new
		#Find the Test
		@test = Test.find(params[:test_id])
		
		
		# Checks the enddate hasn't passed, it it has 
		# displays the expired page
		unless @test.end_date <  DateTime.now
			# Create a new test user
			@test_user = @test.test_users.new
			
		else
			redirect_to expired_test_path(@test)
		end

		# build result options
	end

	def create
		# Gets the test id from the parama
		@test = Test.find(params[:test_id])	
			
		@test_user = @test.test_users.new(test_params)


		if @test_user.save

			params[:results][:chosen_words].delete_if { |word| word.blank? }.each do |chosen|
				@test_user.test_options.create(option_id: chosen, is_good: true)
			end

			params[:results][:bad_chosen_words].delete_if { |word| word.blank? }.each do |chosen|
				@test_user.test_options.create(option_id: chosen, is_good: false)
			end

			redirect_to thanks_test_path(@test)
			#redirect_to root_path
			#(:controller => 'contents', :action => 'thanks')
		else
			flash[:error] = "Ah nuts! We had a little hiccup. Would you be able to tell us again what you think...pretty please"
			render "new"
		end
	end




	def edit
	end

	def update
	end


	def destroy
		
	
	end



	# Whitelisting params

	def test_params
		params.require(:results).permit(:chosen_words, :bad_chosen_words)
	end

end
