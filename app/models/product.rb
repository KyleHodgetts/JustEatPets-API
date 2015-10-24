class Product < ActiveRecord::Base

	belongs_to :restaurant

	validates :name, presence: true
	validates :pet, presence: true

end
