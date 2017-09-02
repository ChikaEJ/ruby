class Admin::FoodsController < AdminController
  def index
    @foods = Food.all
    @shops = Shop.all
  end
  def new
    @food = Food.new
    @shops = Shop.all
  end

  def create
    @food = Food.create(food_params)
    if @food.save
      redirect_to @food
    else
      render 'new'
    end
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to admin_food_path
    else
      render 'edit'
    end
  end

  def destroy
    @food = Food.destroy(params[:id])
    redirect_to admin_foods_path
  end

  private

  def food_params
    params.require(:food).permit(:title, :price, :describtion, :shop_id, :category_id)
  end
end
