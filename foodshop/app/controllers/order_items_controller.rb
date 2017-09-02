class OrderItemsController < ApplicationController


  def show
    @orderItem = OrderItem.find(params[:id])
  end

end
