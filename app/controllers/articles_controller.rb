class ArticlesController < ApplicationController
  layout "test"
  def index
    @articles = Article.all
  end
  def update
    @Article = Article.find(params[:id])
    if @Article.update(Article_params)
      redirect_to(@Article)
    else
      render "edit"
    end
  end
  def show
    @Article = Article.find(params[:id])
    if @Article.nil?
      @Article = Article.all
      flash.now[:alert] = "Your Article was not found"
      render action: "index"
    end
  end
end
