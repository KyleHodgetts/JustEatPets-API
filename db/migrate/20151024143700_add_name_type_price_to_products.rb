class AddNameTypePriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :name, :string
    add_column :products, :type, :string
    add_column :products, :price, :float
  end
end
