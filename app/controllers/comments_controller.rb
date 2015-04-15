class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      # flash[:notice] = "Comment added successfully!"
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js
      end
    else
      render :new #don't need, what to replace it with?
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.update(comment_params)
      # flash[:notice] = "Comment successfully updated!"
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js
      end
    else
      render :edit #don't need, what to replace it with?
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    # flash[:notice] = "Comment destroyed!"
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
