class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :dish_id
      t.string :name
      t.text :description
      t.integer :people_nb

      t.timestamps null: false
    end
  end
end
