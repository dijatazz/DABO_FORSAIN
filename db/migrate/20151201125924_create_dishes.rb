class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
