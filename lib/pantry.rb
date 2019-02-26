class Pantry

  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_object)
    @stock[ingredient_object]
  end

  def restock(ingredient_object, amount)
    @stock[ingredient_object] += amount
  end

  def enough_ingredients_for?(recipe_object)
    recipe_object.ingredients_required.all? {|ingredient_object, amount| @stock[ingredient_object] >= amount}
  end
end
