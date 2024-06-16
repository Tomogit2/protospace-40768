class CommentsController < ApplicationController
  
  def create
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: @prototype.id)    
  end
  
end
