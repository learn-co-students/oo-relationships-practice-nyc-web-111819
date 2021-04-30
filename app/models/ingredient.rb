class Ingredient
    attr_reader :name, :calorie_count, :dessert
    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        DessertIngredient.all.select { |di|di.ingredient == self }.map { |di| di.dessert}
    end

    def bakeries
        dessert.map { |dessert|dessert.bakery }
    end

    def self.find_all_by_name(ingredient)
        Ingredient.all.select {|ingr| ingr.name.include?(ingredient) }
    end
end