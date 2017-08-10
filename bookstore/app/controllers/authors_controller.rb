class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @books = Book.all
  end

  def authors_index
    @authors = Author.all#code
  end
end
