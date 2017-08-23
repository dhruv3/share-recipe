class CommentsController < ApplicationController
  before_filter :require_login, except: [:create]
  def create
  @comment = Comment.new(comment_params)
  @comment.recipe_id = params[:recipe_id]

  @comment.save

  redirect_to recipe_path(@comment.recipe)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end
