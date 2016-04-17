class CommentsController < ApplicationController

  def create
    comment = params[:comment_text]
    @photo = Photo.find(params[:photo_id])
    @photo.comments.create(user: current_user, params[:comment_text])
    redirect_to photos_path
  end
end
