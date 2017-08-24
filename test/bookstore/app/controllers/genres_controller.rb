class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @books = Book.all
  end

  def genres_index
    @genres = Genre.all
    #code
  end
end
