class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @article.comments << @comment
    @article.save
    flash[:notice] = "Comment added."
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  private
    def comment_params
      params.require(:comment).permit(:text, :article_id)
    end
end
