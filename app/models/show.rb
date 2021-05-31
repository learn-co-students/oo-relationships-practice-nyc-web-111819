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

    def episodes
        Episode.all.select {|episode| episode.show == self}
    end

    def characters
        episodes.map {|ep| ep.characters}.uniq
    end

    def on_the_big_screen
        Movie.all.select { |movie| movie.name == self.name}
    end
end