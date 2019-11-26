require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

movie1 = Movie.new("Pirates of the Caribbean: The Curse of the Black Pearl", "Blacksmith Will Turner teams up with eccentric pirate 'Captain' Jack Sparrow to save his love, the governor's daughter, from Jack's former pirate allies, who are now undead.", "Gore Verbinski")
movie2 = Movie.new("Pirates of the Caribbean: Dead Man's Chest", "Jack Sparrow races to recover the heart of Davy Jones to avoid enslaving his soul to Jones' service, as other friends and foes seek the heart for their own agenda as well.", "Gore Verbinski")
movie3 = Movie.new("Pirates of the Caribbean: At World's End", "Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.", "Gore Verbinski")

show1 = Show.new("Pirates a History", "Jack tells us a tale", "Jack Sparrow")
show2 = Show.new("Pirates of the Caribbean: At World's End", "A popular show based on the movie.", "Yuri Truly")

actor1 = Actor.new("Johny Depp")
actor2 = Actor.new("Orlando Bloom")
actor3 = Actor.new("Keira Knightly")

character1 = Character.new("Jack Sparrow", actor1)
character2 = Character.new("Will Turner", actor2)
character3 = Character.new("Elizabeth Swan", actor3)
character4 = Character.new("Legolas", actor2)

mc1 = MovieCharacter.new(character1, movie1)
mc2 = MovieCharacter.new(character2, movie1)
mc3 = MovieCharacter.new(character3, movie1)

sc1 = ShowCharacter.new(character1, show1)

binding.pry
0