class Admin::CategoriesController < AdminController
  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      respond_to do |format|
        format.html{ redirect_to root_path}
        format.js {}
      end
    else
      render 'new'
    end
  end

  def index
    @categories = Category.all
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:title, :shop_id)
  end

end
