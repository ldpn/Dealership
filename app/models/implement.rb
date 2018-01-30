class Implement < ApplicationRecord

	def free_financing?
		special_offers == 0
	end
end
