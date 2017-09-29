class PhotographersController < ApplicationController
  def show
    @photographer = Photographer.find(params[:id])
  end
  def main
    @photographers = Photographer.all
    @photos = Photo.all
  end
  def index_photographers
    @photographers = Photographer.all
    #code
  end
end
