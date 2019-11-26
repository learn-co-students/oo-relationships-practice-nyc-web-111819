require 'pry'
# require_relative 'e_c.rb'
class MovieCharacter
	attr_accessor :character
	attr_reader :movie

  @@all = []

  def initialize(character, movie)
    @character = character
    @movie = movie
    self.class.all << self
  end
  
  def self.all 
    @@all 
  end

end

