class DropAllTables < ActiveRecord::Migration
  def change
  	drop_table :products
  	drop_table :restaurants
  end
end
