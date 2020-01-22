class PostsController < ActionController::Base
  before_action :authorize, only: [:new, :edit, :update, :destroy]
  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new
    render :new
  end
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    render :show
  end
  def edit
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    render :edit
  end
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to user_path(@post.user)
    else
      render :edit
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(@post.user)
  end
end
