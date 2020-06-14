class PostsController < ApplicationController

  before_action :redirect_root, {except: [:index, :show]}
  before_action :correct_user, {only: [:edit, :destroy]}

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
      redirect_to root_path, notice: '投稿しました！'
    else
      flash.now[:alert] = '投稿に失敗しました'
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: '投稿を削除しました'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path, notice: '更新しました！'
  end


  private
  def post_params
    params.require(:post).permit(:product, :shop, :brand, :price, :per, :stars, :acidity, :bitterness, :sweetness, :fragrance, :richiness).merge(user_id: current_user.id)
  end

  def correct_user
    @post = Post.find(params[:id])
    if current_user.id != @post.user_id
      redirect_to root_path, notice: '編集権限がありません'
    end
  end

end
