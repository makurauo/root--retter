class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artists = @user.artists
  end

  def dummy
    redirect_to new_user_registration_path
  end

end
