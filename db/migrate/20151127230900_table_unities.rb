class TableUnities < ActiveRecord::Migration
  def change
  	create_table :unities do |t|
  		t.string :unity_name
  		t.timestamps
    end
  end
end
