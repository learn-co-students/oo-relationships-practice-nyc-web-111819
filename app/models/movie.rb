class Movie
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.most_actors
        array = Appearance.all.map{|appearance| appearance.media}
        array.select{ |appearance| appearance.class == Movie}
        array.max_by{|appearance| array.count(appearance)}
    end
end