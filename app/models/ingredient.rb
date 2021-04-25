class Ingredient
    attr_accessor :calorie_count

    @@all = []

    def initialize(calorie_count)
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end
end