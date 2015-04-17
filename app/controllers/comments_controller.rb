class CommentsController < ApplicationController
  load_and_authorize_resource :post
  load_and_authorize_resource :through => :post

  def new
  end

  def create

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

    respond_to do |format|
      format.html
      format.js
    end
  end

  def update

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
