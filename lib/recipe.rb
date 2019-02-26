class Recipe

  attr_reader :name, :ingredients_required

  def initialize(recipe_name)
    @name = recipe_name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient_object, amount)
    @ingredients_required[ingredient_object] = amount
  end

  def amount_required(ingredient_object)
    @ingredients_required[ingredient_object]
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum {|ingredient_object, amount| ingredient_object.calories * amount}
  end

  # binding.pry
end
