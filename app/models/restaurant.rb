class Restaurant < ActiveRecord::Base
	VALID_POSTCODE_REGEX = /\A[A-Z][A-Z]?([0-9]|[A-Z])?([0-9]|[A-Z])? [0-9][A-Z][A-Z]\z/i

	has_many :products

	before_save { self.postcode = postcode.upcase }

	validates :postcode, presence: true,
		format: { with: VALID_POSTCODE_REGEX }

end
