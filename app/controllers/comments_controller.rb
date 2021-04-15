class CommentsController < ApplicationController
  before_action :move_to_index, except: [:create]

  def create
    comment = Comment.create(comment_params)
    redirect_to "/artists/#{comment.artist_id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, artist_id: params[:artist_id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
