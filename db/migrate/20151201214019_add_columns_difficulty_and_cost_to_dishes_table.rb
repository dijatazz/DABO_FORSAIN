class AddColumnsDifficultyAndCostToDishesTable < ActiveRecord::Migration
  def change
  	add_column :dishes, :cost_id, :integer
  	add_column :dishes, :difficulty_id, :integer
  end
end
