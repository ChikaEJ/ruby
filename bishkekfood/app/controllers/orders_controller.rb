class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    if @order.save
      respond_to do |format|
        format.html{ redirect_to root_path}
        format.js {}
      end
    else
      render 'new'
    end
  end

  def index
    @orders = Order.all
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.order_items.each do |order_item|
      order_item.destroy
    end
    respond_to do |format|
      format.html{ redirect_to root_path}
      format.js {}
    end
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end
end
