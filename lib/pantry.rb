class Pantry

  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    enough_ingredients = []
    recipe.ingredients_required.each do |recipe_ingredient, recipe_value|
      @stock.each do |stock_ingredient, stock_value|
        if recipe_ingredient == stock_ingredient && stock_value >= recipe_value
          enough_ingredients << stock_ingredient
        end
      end
    end
    enough_ingredients.length >= recipe.ingredients_required.length
  end
end