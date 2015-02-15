class SubcommentsController < ApplicationController
before_filter :authenticate_user!, :except => [:destroy, :subcoment_params] 
  def create
    @comment = Comment.find(params[:comment_id])
    @subcomment = @comment.subcomments.build(subcoment_params)
    @subcomment.save

    redirect_to @comment.post
  end

  def destroy
    @subcomment = Subcomment.find(params[:id])
    @subcomment.destroy

    redirect_to @subcomment.comment.post
  end

  def subcoment_params
    params.require(:subcomment).permit(:comment_id, :text)
  end
end
