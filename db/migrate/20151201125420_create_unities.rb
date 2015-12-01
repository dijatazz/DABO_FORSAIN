class CreateUnities < ActiveRecord::Migration
  def change
    create_table :unities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
