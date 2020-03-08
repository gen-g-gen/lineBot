class GroupsController < ApplicationController
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
    # binding.pry
    @group = Group.find(params[:id])
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to root_path
  end

  def update
    @group = Group.find(params[:id])
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

  

end
