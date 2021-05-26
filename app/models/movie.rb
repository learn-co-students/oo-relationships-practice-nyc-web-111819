class Movie
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        MovieCharacter.all.select { |mc| mc.movie == self}.map {|mc| mc.character}
    end

    def actors
        characters.map { |character| character.actor}
    end

    def self.most_actors
        Movie.all.max_by { |movie| movie.actors.length }
    end
end