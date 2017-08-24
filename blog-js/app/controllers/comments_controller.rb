class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)

    respond_to do |format|
      format.html {redirect_to @article}
      format.js {}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
