class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = 'Comment posted successfully'
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = comment.errors.full_messages.first
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
