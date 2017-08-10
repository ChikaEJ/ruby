class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      upload_picture
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      upload_picture
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.destroy(params[:id])

    redirect_to products_path
  end


  private

  def upload_picture
    uploaded_file = params[:product][:picture]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'uploads', @product.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end
  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end
end
