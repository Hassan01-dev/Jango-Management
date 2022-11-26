class GroupsController < ActionController::Base
  before_action :set_group, only: %i[show member_index non_member_index add_member]

  def show
  end

  def member_index
    @users = @group.users
  end

  def non_member_index
    @non_member_users = User.all - @group.users
  end

  def add_member
    user = User.find_by_id(params[:user_id])
    @group.users << user
    flash[:succes] = "Member added successfully"
    redirect_to non_member_index_group_path
  end

  private

  def set_group
    @group = Group.find_by_id(params[:id])
  end
end
