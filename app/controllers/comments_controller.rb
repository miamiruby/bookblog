class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    @comment.chapter_id = params[:chapter_id]
    if @comment.save
      flash[:notice] = "Your comment was saved!"
    else
      flash[:notice] = "There was a problem with your comment."
    end
    redirect_to chapter_path(:id =>  @comment.chapter_id) 
  end

end
