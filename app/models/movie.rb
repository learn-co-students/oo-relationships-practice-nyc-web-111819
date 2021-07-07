require 'pry'
class Movie
	attr_accessor :title, :description, :trivia, :quotes, :rating
	attr_reader :director

	@@all = []

  def initialize(title, description, director)
    @director = director
    @title = title
    @description = description
		self.class.all << self
	end

	def self.all
		@@all
  end
  
  def add_character(character)
    MovieCharacter.new(character, self)
  end 
 
  def my_characters
    movie_characters.map do |movie_char|
      movie_char.character 
    end
  end

  def self.most_actors
    Movie.all.max_by do |movie|
      movie.all_actors.length
    end
  end

  def all_actors
    a = my_characters.map do |characters|
      characters.actor 
    end
    a.uniq
  end

  private

  def movie_characters
    MovieCharacter.all.select do |movie_char|
      movie_char.movie == self 
    end
  end
end

