require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Evan")
guest2 = Guest.new("Mike")
guest3 = Guest.new("Roger")
guest4 = Guest.new("Kevin")

listing1 = Listing.new("Seattle")
listing2 = Listing.new("Paris")
listing3 = Listing.new("Amsterdam")

trip1 = Trip.new(guest1, listing3)
trip2 = Trip.new(guest2, listing1)
trip3 = Trip.new(guest3, listing3)
trip4 = Trip.new(guest1, listing2)
trip5 = Trip.new(guest4, listing1)


binding.pry
0