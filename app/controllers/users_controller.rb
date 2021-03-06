class UsersController < ApplicationController  
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user_recipes = User.find(params[:id]).recipes.all.ordered_by_likes
  end

  private

  def user_params
    params.require(:user).permit(:name, :location, :image, :email, :password, :password_confirmation)
  end

end