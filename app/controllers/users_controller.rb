class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nick_name
    @artists = user.artists
  end
end
