class Bakery
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select { |dessert| dessert.bakery == self }
    end
end