class AddPetToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pet, :string
  end
end
