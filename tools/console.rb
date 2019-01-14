require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





# Put your variables here~!

bill = Guest.new("Bill")
hill = Guest.new("Hillary")
barack = Guest.new("Barack")
michelle = Guest.new("Michelle")

brooklyn = Listing.new("Brooklyn")
dc = Listing.new("DC")

bktrip = Trip.new(bill, brooklyn, 7)
dctrip = Trip.new(hill, dc, 8)

binding.pry
