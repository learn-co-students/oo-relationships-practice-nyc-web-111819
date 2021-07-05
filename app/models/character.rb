class Character
    attr_reader :name, :actor
    @@all = []
    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end
    def self.most_appearances
        charArray = Appearance.all.map{|appearance| appearance.character}
        charArray.max_by{|char| charArray.count(char)}
    end
end