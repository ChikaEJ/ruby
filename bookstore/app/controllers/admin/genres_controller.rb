class Admin::GenresController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  layout 'admin'
  def new
    @genre = Genre.new
  end

  def index
    @genres = Genre.all
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render 'new'
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to @genre
    else
      render 'edit'
    end
  end

  def destroy
    @genre = Genre.destroy(params[:id])
    redirect_to genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:title, :describtion)
  end
end
