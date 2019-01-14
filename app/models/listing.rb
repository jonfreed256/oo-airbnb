class Listing
	attr_reader :city

	@@all = []

	def initialize(city)
		@city = city
		@@all << self
	end
	
	def guests # Returns an array of all Guest instances who have stayed at a listing
		trips.map { |trip| trip.guest }
	end

	def trips # Returns an array of all Trip instances at a listing
		Trip.all.select { |trip| trip.listing == self }
	end

	def trip_count # Returns the number of trips that have been taken to that listing
		trips.count
	end

	def self.all # Returns an array of all Listing instances that have been created
		@@all
	end

	def self.find_all_by_city(city_name) # returns an array of all Listing instances for that city
		@@all.select { |listing| city_name == listing.city }
	end

	def self.most_popular # Finds the listing that has had the most trips
		# @@all.select { |listing| listing.trip_count.max }
		@@all.max_by { |listing| @@all.count(listing) }
	end
	
end
