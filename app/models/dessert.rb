class Dessert
    attr_reader :name, :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        DessertIngredient.all.select { |di| di.dessert == self }.map { |di| di.ingredient}
    end

    def calories
        total = 0
        ingredients.each {|ingredient|total += ingredient.calorie_count }
        total
    end
end