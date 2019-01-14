class Guest
	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def listings # Returns an array of all Listing instances a guest has stayed at
		trips.map { |trip| trip.listing }
	end
	
	def trips # Returns an array of all Trip instances a guest has taken
		Trip.all.select { |trip| trip.guest == self }
	end

	def trip_count # Returns the number of trips a Guest has taken
		trips.count
	end

	def self.all # Returns an array of all Guest instances
		@@all 
	end

	def self.pro_traveler # Returns an array of all Guest instances who have made over 1 trip 
		@@all.select { |guest| guest.trip_count >= 1 }
	end

	def self.find_all_by_name(guest_name) # returns an array of Guest instances with that name
		@@all.select { |guest| guest_name == guest.name }
	end
	
end
