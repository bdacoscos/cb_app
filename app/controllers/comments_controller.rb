class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:content))
    @comment.recipe_id = params[:recipe_id]
    @comment.save
    redirect_to recipe_path(params[:recipe_id])
  end

  def destroy
  end

end