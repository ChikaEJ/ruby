class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]


  def show
    @shop = Shop.find(params[:id])
  end

end
