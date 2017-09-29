class StaffController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]
  def index
    @staff = Staff.all
  end

  def show

  end

  def new
    @staff = Staff.new
  end

  def edit

  end

  def create
    @staff = Staff.create(staff_params)
    if @staff.save
      redirect_to @staff
    else
      render 'new'
    end

  end
  def update
    if @staff.upgrate(staff_params)
      redirect_to @staff
    else
      render 'edit'
    end
  end

  private

  def set_staff
    @staff = Staff.find(params[:id])
  end

  def staff_params
    params.require(:staff).permit(:name, :lastname, :phone, :password, :password_confirmation, :responsibility, :adress, :date_of_birht, :status)
  end
end
