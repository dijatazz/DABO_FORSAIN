class RemoveColumnPeopleNbFromRecipeTable < ActiveRecord::Migration
  def change
  	remove_column :recipes, :people_nb
  end
end
