# Comments Controller
class CommentsController < ApplicationController

  # GET /articles/1/comments/1.json
  def index
    @comments = Comment.all.order(created_at: :desc)
  end

  # POST /articles/1/comments.json
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render :show, status: :created
    else
      render json: {
        error: @comment.errors.full_messages.join('. ')
      }, status: 400
    end
  end

  private

  # Whitelisted parameters for Comment.
  def comment_params
    params.require(:comment).permit(:email, :article_id, :title, :content)
  end
end
