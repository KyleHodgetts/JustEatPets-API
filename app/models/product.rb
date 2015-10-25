class Product < ActiveRecord::Base

	belongs_to :restaurant

	validates :name, presence: true
	validates :pet, presence: true

  before_save { self.price = sprintf('%.2f', self.price)}

end
