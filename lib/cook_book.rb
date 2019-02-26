class CookBook

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe_object)
    @recipes << recipe_object
  end
end
