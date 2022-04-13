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



  
end
