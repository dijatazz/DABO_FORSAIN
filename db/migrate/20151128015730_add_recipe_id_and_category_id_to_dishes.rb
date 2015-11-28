class AddRecipeIdAndCategoryIdToDishes < ActiveRecord::Migration
  def change
  	add_foreign_key :dishes, :recipes, on_delete: :cascade
  	add_foreign_key :dishes, :categories, on_delete: :cascade
  end
end
