class TableRecipes < ActiveRecord::Migration
  def change
  	create_table :recipes do |t|
  		t.integer :dish_id
  		t.string :name
  		t.string :description
  		t.integer :people_nb

  		t.timestamps
    end
  end
end 
