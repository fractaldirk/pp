class CommentsController < ApplicationController
  def create
    @forum = Forum.find(params[:forum_id])
    @comment = @forum.comments.create(params[:comment])
    redirect_to forum_path(@forum)
  end

  def destroy
    @forum = Forum.find(params[:forum_id])
    @comment = @forum.comments.find(params[:id])
    @comment.destroy
    redirect_to forum_path(@forum)
  end
end
