class GroupsController < ApplicationController
  def index
   
  end
  def new
    @group = Group.new
    @group.users << current_user
  end

  def edit
    # @group = Group.find(params[:id])
  end

  def create

  end
  def show
    @user = User.all(params[:id])
  end

  private
  def group_params
    params.require(:group).permit(:name, user_ids: [] )
  end

  

end
