class Show
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
        ShowCharacter.all.select { |sc| sc.show == self}
    end

    def on_the_big_screen
        Movie.all.select { |movie| movie.name == self.name}
    end
end