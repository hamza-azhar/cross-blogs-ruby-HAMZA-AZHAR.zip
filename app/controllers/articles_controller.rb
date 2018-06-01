# Articles Controller
class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  # GET /search.json
  # Searches articles based on full/partial title/body match.
  # Returns top 20 matches
  def search
    @articles = Article.includes(:comments).order(date: :desc).where("title LIKE ? OR content LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%").take(20)
  end

  # GET /articles/1.json
  def show
  end

  # POST /articles.json
  def create
    @article = Article.new(article_params)

    if @article.save
      render :show, status: :created, location: @article
    else
      render json: {
        error: @article.errors.full_messages.join('. ')
      }, status: 400
    end
  end

  # PATCH/PUT /articles/1.json
  def update
    if @article.update(article_params)
      render :show, status: :ok, location: @article
    else
      render json: {
        error: @article.errors.full_messages.join('. ')
      }, status: 400
    end
  end

  # DELETE /articles/1.json
  def destroy
    @article.destroy
    render json: nil, status: 200
  end

  private

  # Set Article based on :id parameter.
  def set_article
    @article = Article.find(params[:id])
  end

  # Whitelisted parameters for Article.
  def article_params
    params.require(:article).permit(:email, :title, :content, :date, :published)
  end
end
