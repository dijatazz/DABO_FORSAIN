class TableUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :email
  		t.string :crypted_password

  		t.timestamps null: false 
  	end
  end
end