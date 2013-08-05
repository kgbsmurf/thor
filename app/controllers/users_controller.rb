class UsersController < ApplicationController
  def new
  end
  


  private
    def user_params
      #params.require(:person).permit(:name, :age)
      params.require(:name, :email)
    end
end
