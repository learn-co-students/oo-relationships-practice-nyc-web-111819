class Appearance
    @@all = []
    attr_reader :media, :character
    def initialize(media, character)
        @media = media
        @character = character
        @@all << self
    end
    def self.all
        @@all
    end
end