class Test < ActiveRecord::Base

	after_save :add_short_url

	has_many :test_users
	belongs_to :user
	#has_many :test_options, through: :test_users

	# Validates the presence of name an duration in the form.
	validates :title, presence: true
	validates :duration, presence: true
	validates :image, presence: true


	# Look up only expands if larger
	has_attached_file :image, presence: true, styles: { large: "800x>", thumbnail: "100x100#" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates_attachment_presence :image

	



	before_save do



		# Specify end date
		self.end_date = DateTime.now + self.duration
		
		self.results_emailed = false
		
		
		# Turns the duration dropdown into an integer
		case self.duration
			when '1 day'
				self.duration = 1
			when '2 days'
				self.duration = 2
			when '3 days'
				self.duration = 3
			when '4 days'
				self.duration = 4
			when '5 days'
				self.duration = 5
			when '6 days'
				self.duration = 6
			when '7 days (1 week)'
				self.duration = 7
			when '8 day'
				self.duration = 8
			when '9 days'
				self.duration = 9
			when '10 days'
				self.duration = 10
			when '11 days'
				self.duration = 11
			when '12 days'
				self.duration = 12
			when '13 days'
				self.duration = 13
			when '14 days (2 weeks)'
				self.duration = 14
			when '15 day'
				self.duration = 15
			when '16 days'
				self.duration = 16
			when '17 days'
				self.duration = 17
			when '18 days'
				self.duration = 18
			when '19 days'
				self.duration = 19
			when '20 days'
				self.duration = 20
			when '21 days (3 weeks)'
				self.duration = 21
		end 

		# Checks that http or https is present in the chosen_destination and adds it if not
		
		unless self.chosen_destination[/\Ahttp:\/\//] || self.chosen_destination[/\Ahttps:\/\//]
	    	self.chosen_destination = "http://#{self.chosen_destination}"
	 	end
		

	end
		
	# This shortens the URL after saving by using the id - NEED TO CHANGE TO DOMAIN WHEN GOING LIVE	
	def add_short_url
		# ORIGINAL BEFORE UPGRADING GEM
		#short_url = Googl.shorten("http://www.mojoleaf.com/tests/"+self.id.to_s+"/results/new").short_url

	# Updated due to usage limits https://github.com/zigotto/googl
		short_url = Googl.shorten("http://www.mojoleaf.com/tests/"+self.id.to_s+"/results/new", "<%= request.remote_ip %>","AIzaSyDxsIe0fqAJoYejtNogjPHjo74YqVG5e9U").short_url
		

    	update_column(:short_url, short_url)
	end
		

end
