class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index

  end

  def new

  end

  def create

    @post.user_id = current_user.id
    if @post.save
      # flash[:notice] = "Your deep thought has entered the physical world successfully!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

    if @post.update(post_params)
      # flash[:notice] = "You have updated your deep thought successfully!"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    
    @post.destroy
    # flash[:notice] = "Great job, you have successfully deleted a thought from the world."
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :entry, :photo)
  end

end
