class UsersController < ApplicationController


  def index
    @user = User.all
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

  def show
  end

  

  private
    def user_params
    params.require(:group).permit(:name, :email, :phone, :image)
    end


end
