class CommentsController < ApplicationController
  before_action :set_group
  
  def create
    Comment.create(comment_params)
    redirect_to post_path(@post.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(post_id: params[:post_id], user_id: current_user.id)
  end

  def set_group
    @post = Post.find(params[:post_id])
  end

end
