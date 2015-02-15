class CommentsController < ApplicationController
before_filter :authenticate_user!, :except => [:destroy, :coment_params] 
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(coment_params)
    @comment.save

    redirect_to @post
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end
  
  def coment_params
    params.require(:comment).permit(:post_id, :text)
  end
end
