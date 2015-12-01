class AddIndexToAllTables < ActiveRecord::Migration
  def change
  	add_index :categories, :id
  	add_index :countries, :id
  	add_index :dishes, :id
  	add_index :ingredients, :id
  	add_index :recipes, :id
  	add_index :unities, :id
  	add_index :users, :id
  end
end
