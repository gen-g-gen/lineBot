class GroupsController < ApplicationController
  before_action :set_group, only: [:update, :destroy, :edit]

  def index
  end

  def new
    @group = Group.new
    @group.users << current_user
    @user = User.all
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
    @user = User.where.not(id: current_user.id)
    
  end

  def destroy
    @group.destroy
    redirect_to root_path
  end

  def update
    @group.update(group_params)
    redirect_to root_path
  end


  def show
    @user = User.all(params[:id])
  end

  private
  def group_params
    params.require(:group).permit(:name,:image, user_ids: [] )
  end

  def set_group
    @group = Group.find(params[:id])
  end
  

end
