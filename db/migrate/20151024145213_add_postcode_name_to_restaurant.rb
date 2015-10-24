class AddPostcodeNameToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :postcode, :string
  end
end
