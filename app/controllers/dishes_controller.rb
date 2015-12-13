class DishesController < ApplicationController
	def index
		@dishes = Dish.all
		@categories = Category.all
	end 
	def show
		@dish = Dish.find(params[:id])																												
	end																																																																																																																																																																																																													
end