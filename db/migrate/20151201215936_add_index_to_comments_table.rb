class AddIndexToCommentsTable < ActiveRecord::Migration
  def change
  	add_index :comments, :id
  end
end
