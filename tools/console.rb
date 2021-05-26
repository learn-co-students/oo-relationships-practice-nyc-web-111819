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

# bakery1 = Bakery.new('Le Pain Quotidien')
# bakery2 = Bakery.new('Panera Bread')
# bakery3 = Bakery.new('Ossining Bakery')

# dessert1 = Dessert.new('Tiramisu', bakery1)
# dessert2 = Dessert.new('Cannoli', bakery2)
# dessert3 = Dessert.new('Apple Pie', bakery3)
# dessert4 = Dessert.new('Ice-Cream', bakery2)

# ingredient1 = Ingredient.new('flour', 100)
# ingredient2 = Ingredient.new('sugar', 200)
# ingredient3 = Ingredient.new('cinnamon', 15)
# ingredient4 = Ingredient.new('cream', 50)

# di1 = DessertIngredient.new(dessert1, ingredient4)
# di2 = DessertIngredient.new(dessert1, ingredient2)
# di3 = DessertIngredient.new(dessert2, ingredient3)
# di4 = DessertIngredient.new(dessert2, ingredient1)
# di5 = DessertIngredient.new(dessert3, ingredient2)
# di6 = DessertIngredient.new(dessert4, ingredient4)

actor1 = Actor.new("Meryl Streep")
actor2 = Actor.new("Pierce Brosnan")
actor3 = Actor.new("Amanda Seyfried")
actor4 = Actor.new("Christine Baranski")
actor5 = Actor.new("Kaley Cuoco")
actor6 = Actor.new("Jim Parsons")
actor7 = Actor.new("Johnny Galecki")

movie1 = Movie.new("Mamma Mia!")
movie2 = Movie.new("Mamma Mia! Here We Go Again")
movie3 = Movie.new("Golden Eye")
movie4 = Movie.new("The World Is Not Enough")
movie5 = Movie.new("Sex and the City")

show1 = Show.new("The Big Bang Theory")
show2 = Show.new("Sex and the City")
show3 = Show.new("Young Sheldon")

character1 = Character.new("Donna", actor1)
character2 = Character.new("Sophie", actor3)
character3 = Character.new("Sam", actor2)
character4 = Character.new("Tanya Chesham-Leigh", actor4)
character5 = Character.new("Dr. Beverly Hofstadter", actor4)
character6 = Character.new("James Bond", actor2)
character7 = Character.new("Penny", actor5)
character8 = Character.new("Sheldon", actor6)
character9 = Character.new("Leonard", actor7)

sc1 = ShowCharacter.new(show1, character7)
sc2 = ShowCharacter.new(show1, character8)
sc3 = ShowCharacter.new(show1, character9)
sc4 = ShowCharacter.new(show3, character8)

mc1 = MovieCharacter.new(movie1, character1)
mc2 = MovieCharacter.new(movie1, character2)
mc3 = MovieCharacter.new(movie1, character3)
mc4 = MovieCharacter.new(movie1, character4)
# mc5 = MovieCharacter.new(movie2, character1)
mc6 = MovieCharacter.new(movie2, character2)
mc7 = MovieCharacter.new(movie2, character3)
mc8 = MovieCharacter.new(movie2, character4)
mc9 = MovieCharacter.new(movie3, character6)
mc10 = MovieCharacter.new(movie4, character6)

binding.pry
0