class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/artists/#{comment.artist.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, artist_id: params[:artist_id])
  end
end
