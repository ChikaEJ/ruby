class BooksController < ApplicationController

  def main
    @genres = Genre.all
    @books = Book.all
  end

  def books_index
    @books = Book.all#code
  end

  def show
    @book = Book.find(params[:id])
  end
end
