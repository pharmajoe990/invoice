class Invoice < ApplicationRecord
	has_many :lineItems, dependent: :destroy

	def total
		sub_total = 0
		lineItems.each do |li|
			sub_total += li.total
		end
		sub_total
	end
end
