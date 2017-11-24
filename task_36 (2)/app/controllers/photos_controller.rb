class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
    #code
  end
  def photos_all
    @photos = Photo.all
    #code
  end
end
