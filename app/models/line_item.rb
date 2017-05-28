class LineItem < ApplicationRecord
  belongs_to :invoice

  def total
    if amount && unitCost
      amount * unitCost
    else
      0
    end
  end
end
