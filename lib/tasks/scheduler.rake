task completed_check: :environment do
	
	# Find all tests that have a enddate before today
	@completed = Test.where(["end_date < ?", DateTime.now])
		
	# Find all the ones, that have finished but have not had a email sent
	@no_email = @completed.where(:results_emailed => false)
	
	@no_email.each do |test|
		# Send Email
		
		
		# Update Record without invoking callbacks, i.e. before_save
		test.update_columns(results_emailed: true)
	
	end
	
	
end