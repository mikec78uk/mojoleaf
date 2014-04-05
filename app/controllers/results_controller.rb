class ResultsController < ApplicationController

	#Make sure logged in for the following actions
	before_action :authenticate_user!, only: [:index, :show] 

	helper_method :good_percentage
	helper_method :bad_percentage



	def index
		@test = Test.find(params[:test_id])
		# if not the test associated with a user redirects to the homepage
		unless @test.user_id == current_user.id
			flash[:error] = "Whoopsie, a person's feedback is for their eyes only"
			redirect_to root_path
		end
		
		@stats = []
		@test.test_users.each do |user|
			@stats += user.test_options.all
		end

		# ugly code from stack overflow
		@stats = @stats.group_by { |option| option.option_id }.map{|k,v| [v[0].option,v.size]} 

		@good_stats = @stats.clone.keep_if { |array| array[0].category == "good" }.sort { |a, b| b[1] <=> a[1] }
		@bad_stats = @stats.clone.keep_if { |array| array[0].category == "bad" }.sort { |a, b| b[1] <=> a[1] }

		@good_stats_count = @good_stats.inject(0) { |sum, array| sum + array[1] }
		@bad_stats_count = @bad_stats.inject(0) { |sum, array| sum + array[1] }

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


		# Need to see if they've already competed the test


	end

	def create
		# Gets the test id from the parama
		@test = Test.find(params[:test_id])	
			
		@test_user = @test.test_users.new(test_params)


		if @test_user.save
		
		
			# Set the the test_user user agent
			
			
			

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
	
	private
	
	
	def good_percentage
		# Calculates the % of good vs bad
		@total_count = @good_stats_count + @bad_stats_count
		@good_percentage = (@good_stats_count/@total_count.to_f)*100	
		@good_percentage.to_i	
		
	end
	
	def bad_percentage
		# Calculates the % difference between good and the total count		
		@bad_percentage = 100 - @good_percentage.to_i		
	end

end
