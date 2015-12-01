class AddColumnSymbolToUnities < ActiveRecord::Migration
  def change
  	add_column :unities, :symbole, :string
  end
end
