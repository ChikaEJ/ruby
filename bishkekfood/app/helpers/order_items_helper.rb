module OrderItemsHelper
  def current_order
    current_order = Order.last
  end
end
