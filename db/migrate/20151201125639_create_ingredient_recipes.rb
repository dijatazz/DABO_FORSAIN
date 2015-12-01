class CreateIngredientRecipes < ActiveRecord::Migration
  def change
    create_table :ingredient_recipes do |t|
      t.integer :unity_id
      t.integer :ingredient_id
      t.integer :recipe_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
