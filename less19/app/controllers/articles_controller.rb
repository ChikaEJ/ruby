class ArticlesController < ApplicationController
  def index
    @articles = Article.all#code
  end
  def new
  end
  def show
    @article = Article.find(params[:id])
    #code
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to articles_index_path
  end
  private
  def article_params
    params.require(:article).permit(:title, :content, :author)#code
  end
end
