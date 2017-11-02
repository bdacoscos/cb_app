class LikesController < ApplicationController
  
  def create
    Like.create(user: current_user, recipe_id: params[:recipe_id])
    redirect_to recipe_path(params[:recipe_id])
  end

  def destroy
    like = Like.find(params[:id])
    recipe = like.recipe
    like.destroy
    redirect_to recipe_path(recipe)
  end
end