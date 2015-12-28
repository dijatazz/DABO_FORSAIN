class AddColumnToDishTable < ActiveRecord::Migration
  def change
  	add_column :dishes, :recipe_id, :integer
  end
end
