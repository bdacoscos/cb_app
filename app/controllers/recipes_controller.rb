class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      flash[:notice] = "Recipe saved!"
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :image, :description, :ingredients, :instructions)
  end

end