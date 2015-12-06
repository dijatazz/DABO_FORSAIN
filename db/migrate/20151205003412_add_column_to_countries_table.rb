class AddColumnToCountriesTable < ActiveRecord::Migration
  def change
  	add_column :countries, :desciption, :text
  end
end
