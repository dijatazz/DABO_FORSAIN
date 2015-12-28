class DeleteColumnRecipeFromDishTable < ActiveRecord::Migration
  def change
  	remove_column :dishes, :recipe_id
  end
end
