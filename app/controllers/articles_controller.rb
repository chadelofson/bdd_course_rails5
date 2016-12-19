class ArticlesController < ApplicationController
  def index
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    flash[:success] = "Article has been created"
    redirect_to articles_path
  end
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
