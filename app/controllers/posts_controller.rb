class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
binding.pry
    @post.user_id = current_user.id
    if @post.save
      # flash[:notice] = "Your deep thought has entered the physical world successfully!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      # flash[:notice] = "You have updated your deep thought successfully!"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    # flash[:notice] = "Great job, you have successfully deleted a thought from the world."
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :entry)
  end

end
