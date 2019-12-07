require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listing.new("Seattle")
listing2 = Listing.new("Paris")
listing3 = Listing.new("Moscow")
listing4 = Listing.new("New York")

guest1 = Guest.new("Lana")
guest2 = Guest.new("Maria")
guest3 = Guest.new("Roger")

trip1 = Trip.new(listing2, guest3)
trip2 = Trip.new(listing1, guest2)
trip3 = Trip.new(listing3, guest1)
trip4 = Trip.new(listing3, guest2)
trip4 = Trip.new(listing1, guest3)
trip4 = Trip.new(listing3, guest3)


binding.pry
0