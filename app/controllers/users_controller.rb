class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artists = @user.artists
  end
end
