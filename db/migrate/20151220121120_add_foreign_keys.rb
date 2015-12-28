class AddForeignKeys < ActiveRecord::Migration
  def change
  	# TABLE Dishes
  	add_foreign_key :dishes, :costs, on_delete: :cascade
  	add_foreign_key :dishes, :difficulties, on_delete: :cascade
  	add_foreign_key :dishes, :categories, on_delete: :cascade
  	add_foreign_key :dishes, :countries, on_delete: :cascade

  	# TABLE Ingredient_recipes
  	add_foreign_key :ingredient_recipes, :unities, on_delete: :cascade
  	add_foreign_key :ingredient_recipes, :recipes, on_delete: :cascade
  	add_foreign_key :ingredient_recipes, :ingredients, on_delete: :cascade

  	#TABLE Recipes
  	add_foreign_key :recipes, :dishes, on_delete: :cascade
  end
end
