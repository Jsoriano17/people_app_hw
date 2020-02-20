class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
    @user = User.new(user_params)

   if @user.save
     redirect_to users_path
   else
     render :new
   end
  end

  def edit
    @user = User.new(user_params)
  end

  def update
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender)
  end

end
