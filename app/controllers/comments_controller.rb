class CommentsController < ApplicationController
  before_action :set_group
  before_action :redirect_root, {only: [:create]}
  
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to post_path(params[:post_id])  }
      format.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(post_id: params[:post_id], user_id: current_user.id)
  end

  def set_group
    @post = Post.find(params[:post_id])
  end

end
