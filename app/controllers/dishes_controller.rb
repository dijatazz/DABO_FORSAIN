class DishesController < ApplicationController
	def index
		@dishes = Dish.all
		@categories = Category.all
	end 
	def show
		@categories = Category.all
		@dish_category = Category.joins(:dishes).select(:name).where("dishes.id = ?", params[:id])
		@recipe = Recipe.find(params[:id])
		@dish = Dish.find(params[:id])
		@ingredients = Recipe.joins("JOIN ingredient_recipes ON recipes.id = ingredient_recipes.recipe_id JOIN ingredients ON ingredient_recipes.ingredient_id = ingredients.id JOIN unities ON unities.id = ingredient_recipes.unity_id").select("recipes.id, ingredient_recipes.ingredient_id, ingredients.name as i_name, ingredient_recipes.quantity as quantity, unities.symbole as unity").where("recipes.id = #{params[:id]}")																											
	end																																																																																																																																																																																																													
end