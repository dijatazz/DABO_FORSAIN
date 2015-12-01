class AddIndexesToCostsAndDifficultiesTables < ActiveRecord::Migration
  def change
  	add_index :costs, :cost_level
  	add_index :difficulties, :difficulty_level
  end
end
