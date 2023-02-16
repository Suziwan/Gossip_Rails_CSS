class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(:id)
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    post_params = params.require(:comment).permit(:content)
    @comment.update(post_params)
    redirect_to gossips_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossips_path
  end
end
