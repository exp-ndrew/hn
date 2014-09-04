class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    if params[:parent_comment_id] != nil
      @parent_comment = Comment.find(params[:parent_comment_id])
      @user = User.find(params[:user_id])

      @comment = @parent_comment.comments.new(comment_params)
      @user.comments << @comment

      @user.save
      @parent_comment.save

      @article = Article.find(params[:article_id])
      flash[:notice] = "Reply added."

    elsif params[:article_id] != nil

      @article = Article.find(params[:article_id])
      @user = User.find(params[:user_id])

      @comment = @article.comments.new(comment_params)
      @article.comments << @comment
      @user.comments << @comment

      @user.save

      flash[:notice] = "Comment added."
    end
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
    if @comment.comments.any?
      @comment.text = "This comment has been deleted."
      @comment.save
    else
      @comment.delete
    end
    flash[:notice] = "Comment Destroyed!!!"
    redirect_to article_path(@article)
  end

  def edit
    @comment = Comment.find(params[:id])
    @article = Article.find(params[:article_id])
  end

  private
    def comment_params
      params.require(:comment).permit(:text, :article_id, :parent_comment_id, :user_id)
    end
end
