class DeletNameColumnFromRecipesTable < ActiveRecord::Migration
  def change
  	remove_column :recipes, :name
  end
end
