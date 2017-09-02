class OrderItemsController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @order_item = @order.order_items.create(order_item_params)

    respond_to do |format|
      format.html{ redirect_to @order}
      format.js {}
    end
  end
  def destroy
    @order = Order.find(params[:order_id])
    @order_item =@order.order_items.find(params[:id])
    @order_item.destroy

    respond_to do |format|
      format.html{ redirect_to @order}
      format.js {}
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:amount, :price, :title)
  end

end
