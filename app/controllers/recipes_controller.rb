class RecipesController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show, :all]

  def all
    @recipes = Recipe.all
  end

  def index
    @recipes = Recipe.where(user_id: current_user)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      flash[:notice] = "Recipe saved!"
      redirect_to recipes_path
    else
      render :new
    end
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      flash[:notice] = "Changes saved!"
      redirect_to recipe_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :image, :description, :ingredients, :instructions)
  end

end