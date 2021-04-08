class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/artists/#{comment.artist_id}"
  end

  # def create
  #  @artist = Artist.find(params[:id])
  #  @comment = Comment.new(comment_params)
  #    if @comment.save
  #      redirect_to artist_path(@comment.artist)
  #    else
  #      render "artists/show"
  #    end
  # end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, artist_id: params[:artist_id])
  end
end
