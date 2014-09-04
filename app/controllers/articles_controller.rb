class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      flash[:notice] = "Article added."
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @commentable = Comment.new
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:alert] = "Article deleted."
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :content, :link)
    end
end
