class Waiter
attr_accessor :name, :years_of_experience
@@all = []
def initialize(name, years_of_experience)
  @name = name
  @years_of_experience = years_of_experience
  @@all << self 
end
def self.all 
  return @@all
end 
def meals
  Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
  end
end
def best_tipper
  best_tipped_meal = meals.max do |meal_a, meal_b|
    meal_a.tip <=> meal_b.tip
  end
end