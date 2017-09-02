class Admin::ShopsController < AdminController
  def index
    @shops = Shop.all
  end
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    if @shop.save
      upload_picture
      redirect_to admin_shops_path
    else
      render 'new'
    end
  end
  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      upload_picture
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to admin_shops_path
  end

  private

  def upload_picture
    uploaded_file = params[:shop][:image]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'shop', @shop.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end

  def shop_params
    params.require(:shop).permit(:title, :describtion, :image)
  end
end
