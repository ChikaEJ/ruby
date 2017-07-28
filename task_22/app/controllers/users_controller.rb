class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(users_params)
    @user.save

    redirect_to root_path
  end
  def show
    @user = User.find(params[:id])#code
  end

  def index
    @users = User.all
  end
  def edit
    @user = User.find(params[:id])#code
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)

    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    redirect_to root_path
  end
  private
    def users_params
      params.require(:user).permit(:name, :surname, :email, :gender, :status, :pasword, :description, :city)#code
    end
end
