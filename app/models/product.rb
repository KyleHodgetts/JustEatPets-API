class Product < ActiveRecord::Base

	belongs_to :restaurant

	validates :name, presence: true
	validates :type, presence: true

end
