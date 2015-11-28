class Recipe < ActiveRecord::Base
	belongs_to :dish
	has_many :ingredients, :through => :ingredient_recipe
	has_many :unities, :through => :ingredient_recipe
end