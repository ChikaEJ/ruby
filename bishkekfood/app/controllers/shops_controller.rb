class ShopsController < ApplicationController
  def show
    @shop = Shop.find(params[:id])
    @foods = Food.all
  end

  def main
    @shops = Shop.all
  end
end
