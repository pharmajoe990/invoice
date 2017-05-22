class LineItem < ApplicationRecord
  belongs_to :invoice

  def total
    amount * unitCost
  end
end
