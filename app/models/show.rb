require 'pry'
class Show
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
    ShowCharacter.new(character, self)
  end 
 
  def my_characters
    show_characters.map do |show_char|
      show_char.character 
    end
  end

  def self.most_actors
    Show.all.max_by do |show|
      show.all_actors.length
    end
  end

  def all_actors
    a = my_characters.map do |characters|
      characters.actor 
    end
    a.uniq
  end

  def on_the_big_screen
    Movie.all.select do |movie|
      movie.title == self.title
    end
  end

  private

  def show_characters
    ShowCharacter.all.select do |show_char|
      show_char.show == self 
    end
  end
end

