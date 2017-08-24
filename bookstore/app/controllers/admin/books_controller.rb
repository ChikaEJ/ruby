class Admin::BooksController < AdminController

  def new
    @book = Book.new
  end
  def main
    @genres = Genre.all
    @books = Book.all
  end

  def index
    @books = Book.all
    @books = @books.sort_by { |hsh| hsh[:sale] }.reverse
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      upload_picture
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      upload_picture
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.destroy(params[:id])
    redirect_to books_path
  end

  private

  def upload_picture
    uploaded_file = params[:book][:picture]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'uploads', @book.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end

  def book_params
    params.require(:book).permit(:title, :price, :author_id, :genre_id, :describtion, :sale)
  end
end
