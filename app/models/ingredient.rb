class Ingredient < ActiveRecord::Base
	has_many :ingredient_recipes
end