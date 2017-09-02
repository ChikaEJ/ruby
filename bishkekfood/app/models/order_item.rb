class OrderItem < ApplicationRecord
  belongs_to :order


  def total_price
    amount * price
  end

end
