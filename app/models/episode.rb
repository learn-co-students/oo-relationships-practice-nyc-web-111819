class Episode
    attr_reader :name, :show
    @@all = []

    def initialize(show, name)
        @show = show
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        EpisodeCharacter.all.select {|ec|ec.episode == self}.map {|ec|ec.character}.uniq
    end
end