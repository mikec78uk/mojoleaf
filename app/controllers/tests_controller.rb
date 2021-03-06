class TestsController < ApplicationController

	#Make sure logged in for the following actions
	before_action :authenticate_user!, only: [:index, :new, :show] 

	def index
		#@tests = Test.all
		
		# Gets all tests that have an end date before now
		@completed_tests = current_user.tests.where(["end_date < ?", DateTime.now]).order("end_date asc")
		# Gets all tests that have an end date after now		
		@current_tests = current_user.tests.where(["end_date > ?", DateTime.now]).order("end_date asc")
		

		
	end


	def show
		@test = Test.find(params[:id])
		# if not the test associated with a user redirects to the homepage
		unless @test.user_id == current_user.id
			flash[:error] = "Whoopsie, a person's feedback is for their eyes only"
			redirect_to root_path
		end
	end

	def new
		@test = Test.new
	end

	def create
		@test = Test.new(test_params)
		@test.user_id = current_user.id

		if @test.save
			
			# To send the confirmation to user
			TestMailers.test_added(@test).deliver
			
			# Mark the test as taken
			
			# The (@test) is for the actual test just uploaded
			redirect_to test_path(@test)
		else
			render "new"
		end

	end

	def edit

	end

	def update

	end

	def destroy
		@test = Test.find(params[:id])
		# Delete it
		@test.destroy
		# Let them know
		flash[:success] = "You're design has been removed, we hope you found the feedback useful"
		# Sent to homepage
		redirect_to tests_path
	end


	def thanks
		@test = Test.find(params[:id])
	end

	def expired
		@test = Test.find(params[:id])
	end
	
	def already_completed
		@test = Test.find(params[:id])
	end

	def test_params
		# Allows the user to add a title, duration and image
		params.require(:test).permit(:title, :duration, :image, :chosen_destination)
	end


end
