class UsersController < ApplicationController
  before_action :set_user, only: [:show,:logout]
  def show
  end


  def logout
  end
 
  private

  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(
      :nickname,
      :introduction,
    )
  end
end
