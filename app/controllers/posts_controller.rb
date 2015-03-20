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
      render new
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :entry)
  end
end
