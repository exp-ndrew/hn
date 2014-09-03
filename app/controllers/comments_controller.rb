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

  def update
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    flash[:notice] = "Comment Updated!"
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    @comment.delete
    flash[:notice] = "Comment Destroyed!!!"
    redirect_to article_path(@article)
  end

  def edit
    @comment = Comment.find(params[:id])
    @article = Article.find(params[:article_id])
  end

  private
    def comment_params
      params.require(:comment).permit(:text, :article_id)
    end
end
