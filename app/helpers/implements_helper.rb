module ImplementsHelper

	def format_price(implement)
		if implement.free_financing? 
			content_tag(:mark, "FREE Financing Available!")
		else
			"Financing Available"
		end
	end
end
