class PostsController < ApplicationController

  def index
   @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    gon.acidity = @post.acidity
    gon.bitterness = @post.bitterness
    gon.sweetness = @post.sweetness
    gon.fragrance = @post.fragrance
    gon.richiness = @post.richiness
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like = Like.new
    @likes = Like.where(post_id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path, notice: 'コーヒーの記録を投稿しました！'
    else
      flash.now[:alert] = '投稿に失敗しました'
      render :new
    end
  end


  private
  def post_params
    params.require(:post).permit(:product, :shop, :brand, :price, :per, :stars, :acidity, :bitterness, :sweetness, :fragrance, :richiness).merge(user_id: current_user.id)
  end

end
