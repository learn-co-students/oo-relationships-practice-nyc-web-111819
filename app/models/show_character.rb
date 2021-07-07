require 'pry'
class ShowCharacter
	attr_accessor :character
	attr_reader :show

  @@all = []

  def initialize(character, show)
    @character = character
    @show = show
    self.class.all << self
  end
  
  def self.all 
    @@all 
  end

end

