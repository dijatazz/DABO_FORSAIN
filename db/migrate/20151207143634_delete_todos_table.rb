class DeleteTodosTable < ActiveRecord::Migration
  def change
  	drop_table :todos
  end
end
