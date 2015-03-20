class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Your deep thought has entered the physical world successfully!"
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
    if @post.update(params[:post])
      flash[:notice] = "You have updated your deep thought successfully!"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :entry)
  end
end
