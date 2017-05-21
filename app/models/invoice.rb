class Invoice < ApplicationRecord
	has_many :lineItems, dependent: :destroy
end
