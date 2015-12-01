class IngredientRecipe < ActiveRecord::Base
	belongs_to :recipie
	belongs_to :unity
	belongs_to :ingredient
end
