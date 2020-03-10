class UsersController < ApplicationController

  def index
    @user = User.where.not(id: current_user.id)
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  

  private
    def user_params
    params.require(:user).permit(:nickname, :firstname, :lastname, :email, :image)
    end


end
