class AddUnityIdAndIngredientIdAndRecipeidToRecipeIngredients < ActiveRecord::Migration
  def change
  	add_foreign_key :ingredient_recipes, :recipies, column: :recipe_id, primary_key: "id", on_delete: :cascade
  	add_foreign_key :ingredient_recipes, :unities, column: :unity_id, primary_key: "id", on_delete: :cascade
  	add_foreign_key :ingredient_recipes, :ingredients, column: :ingredient_id, primary_key: "id", on_delete: :cascade
  end
end
