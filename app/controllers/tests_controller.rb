class TestsController < ApplicationController

	def index
		#@tests = Test.all
		
		# Gets all tests that have an end date before now
		@completed_tests = Test.where(["end_date < ?", DateTime.now]).order("end_date asc")
		# Gets all tests that have an end date after now		
		@current_tests = Test.where(["end_date > ?", DateTime.now]).order("end_date asc")
		

		
	end


	def show
		@test = Test.find(params[:id])
	end

	def new
		@test = Test.new
	end

	def create
		@test = Test.new(test_params)

		if @test.save
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
	end

	def expired
	end

	def test_params
		# Allows the user to add a title, duration and image
		params.require(:test).permit(:title, :duration, :image)
	end


end
