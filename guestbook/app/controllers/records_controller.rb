class RecordsController < ApplicationController
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end

  def new
    @record = Record.new

  end

  def edit
    @record = Record.find(params[:id])
  end
  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    if @record.save
      redirect_to @record
    else
      render 'edit'
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def index
    @records = Record.all
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path
  end

  private

  def record_params
    params.require(:record).permit(:name, :email, :text)
  end
end
