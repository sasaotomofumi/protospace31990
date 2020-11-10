class CommentsController < ApplicationController
  def create 
   @comment = Comment.new(comment_parmas)
   if @comment.save 
      redirect_to prototypes_path(@comment.prototype)
   else
    @prototype = @comment.prototype
    render "prototypes/show"
   end
  end

  private
  def comment_parmas 
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
