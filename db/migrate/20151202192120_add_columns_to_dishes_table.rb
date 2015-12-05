class AddColumnsToDishesTable < ActiveRecord::Migration
  def change
  	add_column :dishes, :bake_time, :integer
  	add_column :dishes, :preparation_time, :integer
  end
end
