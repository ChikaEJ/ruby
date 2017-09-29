class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  def index
    @departments = Department.all
  end

  def show

  end

  def new
    @department = Department.new
  end

  def update

  end

  def create
    @department = Department.create(department_params)
    if @department.save
      redirect_to @department
    else
      render 'new'
    end
  end

  def update
    if @department.upgrade(department_params)
      redirect_to @department
    else
      render 'update'
    end
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end
  def department_params
    params.require(:department).permit(:title, :description)
  end
end
