class IngredientRecipe < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :unity
	belongs_to :ingredient
end
