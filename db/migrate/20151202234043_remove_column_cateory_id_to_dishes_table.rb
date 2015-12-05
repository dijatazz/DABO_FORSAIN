class RemoveColumnCateoryIdToDishesTable < ActiveRecord::Migration
  def change
  	remove_column :dishes, :cateory_id, :integer
  end
end
