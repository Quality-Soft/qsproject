class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    #params.permit!
    @mei = Mei.find(params[:mei_id])
    @comment = @mei.comments.create(comment_params)
    redirect_to mei_path(@mei)
  end 
  def destroy
    @mei = Mei.find(params[:mei_id])
    @comment = @mei.comments.find(params[:id])
    @comment.destroy
    redirect_to mei_path(@mei)  
  end
  private
  def comment_params
    params.require(:comment).permit(:name, :title, :description, :mei_id)
  end
end
