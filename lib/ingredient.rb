class Ingredient

  attr_reader :name, :unit, :calories

  def initialize(ingredient_name, unit_of_measurement, calorie_count)
    @name = ingredient_name
    @unit = unit_of_measurement
    @calories = calorie_count
  end

end
