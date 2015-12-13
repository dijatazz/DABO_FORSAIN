class Recipe < ActiveRecord::Base
	belongs_to :dish
	has_many :ingredients, :through => :ingredient_recipes
	has_many :unities, :through => :ingredient_recipes
end
