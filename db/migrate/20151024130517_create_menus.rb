class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
    	t.integer :restaurant_id
    	t.integer :product_id
    	t.timestamps null: false
    end
  end
end
