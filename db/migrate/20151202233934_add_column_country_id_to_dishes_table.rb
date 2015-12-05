class AddColumnCountryIdToDishesTable < ActiveRecord::Migration
  def change
  	add_column :dishes, :country_id, :integer
  end
end
