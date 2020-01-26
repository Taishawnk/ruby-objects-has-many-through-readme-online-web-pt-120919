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
end