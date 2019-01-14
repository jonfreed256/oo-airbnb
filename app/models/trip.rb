class Trip
	attr_accessor :guest, :listing, :duration

	@@all = []

	def initialize(guest, listing, duration)
		@guest = guest
		@listing = listing
		@duration = duration
		@@all << self
	end

	def self.all # Returns an array of all Trips created
		@@all
	end
	
end
