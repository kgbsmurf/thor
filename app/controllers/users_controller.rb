class UsersController < ApplicationController
  
  before_filter :signed_in_user, only: [:edit, :update]
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      # Successful Save
      sign_in @user
      flash[:success] = "#{@user.name} Welcome to Thor"
      
      redirect_to @user
    else
      
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
    else
      render 'edit'
    end
  end
  
  
  
  private
  
  def user_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def signed_in_user
    redirect_to signin_path, notice: "Please sign in." unless signed_in?
  end
  
end
