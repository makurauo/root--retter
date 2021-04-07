class ArtistsController < ApplicationController
before_action :set_artist, only: [:edit, :update, :show,:destroy]
before_action :move_to_index, except: [:index, :show]

def index
  @user = User.order("created_at DESC")
  @artists = Artist.all
end

def new
  @artist = Artist.new
end

def create
  @artist = Artist.new(artist_params)
  if @artist.save
    redirect_to root_path
  else
    render :new
  end
end

def edit
end

def update
  if @artist.update(artist_params)
    redirect_to root_path
  else
    render :edit
  end
end

def show
end

def destroy
  @artist.destroy
  redirect_to root_path
end


private

def artist_params
  params.require(:artist).permit(:name, :explanation).merge(user_id: current_user.id)
end

def set_artist
  @artist = Artist.find(params[:id])
end

def move_to_index
  unless user_signed_in?
    redirect_to action: :index
  end
end

end
