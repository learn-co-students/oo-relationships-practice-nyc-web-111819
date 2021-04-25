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

passenger1 = Passenger.new("Passenger 1")
passenger2 = Passenger.new("Passenger 2")
passenger3 = Passenger.new("Passenger 3")
passenger4 = Passenger.new("Passenger 4")

driver1 = Driver.new("Driver 1")
driver2 = Driver.new("Driver 2")
driver3 = Driver.new("Driver 3")

ride1 = Ride.new(driver3, passenger1, 4.3)
ride2 = Ride.new(driver1, passenger2, 2.3)
ride3 = Ride.new(driver3, passenger3, 7.8)
ride4 = Ride.new(driver2, passenger1, 4.9)
ride5 = Ride.new(driver1, passenger4, 4.6)

# dessert1 = Dessert.new
# bakery1 = Bakery.new
# ingredient1 = Ingredient.new(150P

binding.pry
0