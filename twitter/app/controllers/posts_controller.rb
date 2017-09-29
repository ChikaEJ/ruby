class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  def edit
    @post = Post.find(params[:id])#code
  end
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
    #code
  end

  private
  def post_params
    params.required(:post).permit(:text, :user_id)
  end
end
