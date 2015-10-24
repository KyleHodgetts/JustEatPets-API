class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|

    	t.string :postcode
    	t.string :name
      	t.timestamps null: false

    end
  end
end