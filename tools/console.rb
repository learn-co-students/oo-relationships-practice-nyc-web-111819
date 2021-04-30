require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# guest1 = Guest.new("Evan")
# guest2 = Guest.new("Mike")
# guest3 = Guest.new("Roger")
# guest4 = Guest.new("Kevin")

# listing1 = Listing.new("Seattle")
# listing2 = Listing.new("Paris")
# listing3 = Listing.new("Amsterdam")

# trip1 = Trip.new(guest1, listing3)
# trip2 = Trip.new(guest2, listing1)
# trip3 = Trip.new(guest3, listing3)
# trip4 = Trip.new(guest1, listing2)
# trip5 = Trip.new(guest4, listing1)

# passenger1 = Passenger.new("Passenger 1")
# passenger2 = Passenger.new("Passenger 2")
# passenger3 = Passenger.new("Passenger 3")
# passenger4 = Passenger.new("Passenger 4")

# driver1 = Driver.new("Driver 1")
# driver2 = Driver.new("Driver 2")
# driver3 = Driver.new("Driver 3")

# ride1 = Ride.new(driver3, passenger1, 4.3)
# ride2 = Ride.new(driver1, passenger2, 2.3)
# ride3 = Ride.new(driver3, passenger3, 7.8)
# ride4 = Ride.new(driver2, passenger1, 4.9)
# ride5 = Ride.new(driver1, passenger4, 4.6)

bakery1 = Bakery.new('Le Pain Quotidien')
bakery2 = Bakery.new('Panera Bread')
bakery3 = Bakery.new('Ossining Bakery')

dessert1 = Dessert.new('Tiramisu', bakery1)
dessert2 = Dessert.new('Cannoli', bakery2)
dessert3 = Dessert.new('Apple Pie', bakery3)
dessert4 = Dessert.new('Ice-Cream', bakery2)

ingredient1 = Ingredient.new('flour', 100)
ingredient2 = Ingredient.new('sugar', 200)
ingredient3 = Ingredient.new('cinnamon', 15)
ingredient4 = Ingredient.new('cream', 50)

di1 = DessertIngredient.new(dessert1, ingredient4)
di2 = DessertIngredient.new(dessert1, ingredient2)
di3 = DessertIngredient.new(dessert2, ingredient3)
di4 = DessertIngredient.new(dessert2, ingredient1)
di5 = DessertIngredient.new(dessert3, ingredient2)
di6 = DessertIngredient.new(dessert4, ingredient4)

binding.pry
0