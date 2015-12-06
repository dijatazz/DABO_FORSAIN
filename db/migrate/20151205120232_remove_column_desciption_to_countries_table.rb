class RemoveColumnDesciptionToCountriesTable < ActiveRecord::Migration
  def change
  	remove_column :countries, :desciption
  end
end
