class Character
    attr_reader :name, :actor
    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def movies
        MovieCharacter.all.select {|mc|mc.character == self}.map { |mc| mc.movie }
    end

    def shows
        ShowCharacter.all.select { |sc| sc.character == self}.map { |mc| mc.show }
    end

    # should return which character of film/television appears in the most films or tv shows
    # def self.most_appearances
    # end
end