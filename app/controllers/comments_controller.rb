class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params.merge(article_id: params[:article_id]))
    if @comment.save
      flash[:success] = 'Comment posted successfully'
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = @comment.errors.full_messages.first
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
