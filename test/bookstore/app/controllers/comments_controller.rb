class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)

    respond_to do |format|
      format.html{ redirect_to @book}
      format.js {}
      end
   end

  private

  def comment_params
    params.require(:comment).permit(:author, :rating, :text)
  end
end

