class ArticlesController < ApplicationController
  def new
  end

  def create
    @title = params[:title] + " in create action"
    @content = params[:content] + " in create action"
    @author = params[:author] + " in create action"
  end
end
