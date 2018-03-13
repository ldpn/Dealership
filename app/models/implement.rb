class Implement < ApplicationRecord

validates :model, presence: true

validates :in_stock, numericality: {greater_than_or_equal_to: 0}, format: {
	with: /\z/x, 
	message: "Number in stock must be zero or greater."
}


	def free_financing?
		special_offers == 0
	end

	def self.workhorse
		where("hp >= 50").order(hp: :asc)
	end
end
