require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

actor1 = Actor.new('George Clooney')
actor2 = Actor.new('Meryl Streep')
actor3 = Actor.new('James')
char1 = Character.new('Goofy',actor1)
char2 = Character.new('Moe', actor2)
char3 = Character.new('Curly',actor3)
char4 = Character.new('Shakil',actor3)
char5 = Character.new('Saman', actor3)
char6 = Character.new('Anna', actor1)
movie1 = Movie.new('White Swan')
movie2 = Movie.new('Star Wars 15')
show1 = Show.new('Star Wars Show 15')
show2 = Show.new('Star Wars 15')
app1 = Appearance.new(show1, char1)
app2 = Appearance.new(show2, char2)
app3 = Appearance.new(show1, char3)
app4 = Appearance.new(show2, char1)
app5 = Appearance.new(movie1, char1)
app6 = Appearance.new(movie2, char1)
app7 = Appearance.new(movie1, char2)
app8 = Appearance.new(movie1, char3)




binding.pry
0