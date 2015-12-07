class AddColumnDescriptionToDishesTable < ActiveRecord::Migration
  def change
  	add_column :dishes, :presentation, :text
  end
end
