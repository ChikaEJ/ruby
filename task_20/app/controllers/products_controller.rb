class ProductsController < ApplicationController
  def index
    @products = Product.all#code
  end
  def new
  end
  def show
    @product = Product.find(params[:id])
    #code
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to root_path
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
    #code
  end

  private
  def product_params
    params.require(:product).permit(:name_of_product, :description, :price)#code
  end
end
