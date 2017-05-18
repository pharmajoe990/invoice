class Invoice < ApplicationRecord
	has_many :lineItems
end
