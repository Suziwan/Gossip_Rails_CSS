class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def edit
  end
end
