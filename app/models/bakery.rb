class Bakery
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts_and_ingredients
        DessertIngredient.all.select {|di| di.dessert.bakery == self }
    end

    def desserts
        desserts_and_ingredients.map {|di|di.dessert }.uniq
    end

    def ingredients
        desserts_and_ingredients.map {|di|di.ingredient }
    end

    def shopping_list
        ingredients.map {|ingr|ingr.name}
    end

    def average_calories
        total = 0
        desserts.each {|dessert|total += dessert.calories}
        total / desserts.length
    end
end