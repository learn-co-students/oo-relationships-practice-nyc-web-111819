require 'pry'
class Character
	attr_accessor :name, :description
	attr_reader :actor

	@@all = []

  def initialize(name, actor)
    @actor = actor
		@name = name
		self.class.all << self
	end

	def self.all
		@@all
  end
  
	def self.most_appearances
		self.all_char.max_by do |character|
			all_char.count(character)
		end
	end

	def self.combine
		@@combine = []
		@@combine = MovieCharacter.all + ShowCharacter.all
	end

	def self.all_char
		self.combine.map do |e_c|
			e_c.character
		end
	end
end

