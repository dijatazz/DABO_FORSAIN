class ModifyIndexesCostsAndDifficultiesTables < ActiveRecord::Migration
  def change
  	remove_index :costs, :cost_level
  	remove_index :difficulties, :difficulty_level
  	add_index :costs, :id
  	add_index :difficulties, :id
  end
end
