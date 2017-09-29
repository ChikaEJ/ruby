class Admin::UsersController < AdminController
  def new
    @user = User.new
  end
  def show
    show_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
  def show_user
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to root_path, notice: 'Error user id'
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
