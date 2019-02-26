class CookBook

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe_object)
    @recipes << recipe_object
  end

  def summary
    #need to group @recipes array to match interaction pattern.
    #lots of nesting.
    #all info needed is in @recipes array. total_calories is already in recipe.rb
    @recipes.group_by do |recipe_object|
      recipe_object.name
    end
  end
  
end
