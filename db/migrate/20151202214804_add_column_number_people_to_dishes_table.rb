class AddColumnNumberPeopleToDishesTable < ActiveRecord::Migration
  def change
  	add_column :dishes, :number_people , :integer  
  end
end
