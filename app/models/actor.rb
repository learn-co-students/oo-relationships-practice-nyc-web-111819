class Actor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.most_characters
        hash = Appearance.all.collect{|appearance| {appearance.character.name => appearance.character.actor}}
        string = hash[0].keys.max_by{|key| hash[0].keys.count(key)}
        Appearance.all.find{|appearance| appearance.character.name == string}.character.actor.name
    end
end