class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.recipe_id = params[:recipe_id]
    @comment.user = current_user
    @comment.save
    redirect_to recipe_path(params[:recipe_id])
  end

  def destroy
    comment = Comment.find(params[:id])
    recipe = comment.recipe
    comment.destroy
    redirect_to recipe_path(recipe)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end