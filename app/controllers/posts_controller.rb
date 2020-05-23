class PostsController < ApplicationController

  def index
   @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like = Like.new
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end


  private
  def post_params
    params.require(:post).permit(:product, :shop, :brand, :price, :per, :stars, :acidity, :bitterness, :sweetness, :fragrance, :richiness).merge(user_id: current_user.id)
  end

  
end
