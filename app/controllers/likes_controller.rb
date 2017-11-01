class LikesController < ApplicationController
  
  def create
    Like.create(user: current_user, recipe_id: params[:recipe_id])
    redirect_to recipe_path(params[:recipe_id])
  end

  def destroy
  end
end