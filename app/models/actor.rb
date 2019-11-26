require 'pry'
class Actor
	attr_accessor :name, :bio
	attr_reader

	@@all = []

	def initialize(name)
		@name = name
		self.class.all << self
	end

	def self.all
		@@all
  end
  
  def all_characters
    Character.all.select do |character|
      character.actor == self 
    end
  end

	def self.most_characters
		a = Actor.all.map do |actor|
			actor.all_characters
		end
		a.max_by {|character| character.length}[0].actor 
	end
end

