class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  
    @groups = Group.find(params[:id])
  end

  def upadata
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
    def user_params
    params.require(:group).permit(:name, :email, :phone)
    end


end
