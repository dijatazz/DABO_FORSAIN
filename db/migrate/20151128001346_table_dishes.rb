class TableDishes < ActiveRecord::Migration
  def change
  	create_table :dishes do |t|
  		t.string :name
  		t.integer :recipe_id
  	end
  end
end
