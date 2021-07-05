class Show
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def on_the_big_screen
        Appearance.all.select{|appearance| appearance.media.class == Movie && appearance.media.name == self.name}
    end
end