class UsersController < ActionController::Base
  def profile
    @user = User.unscoped.find_by_id(params[:id])
  end
end
