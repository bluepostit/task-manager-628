class Recipe
  attr_reader :ingredients

  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end
end
