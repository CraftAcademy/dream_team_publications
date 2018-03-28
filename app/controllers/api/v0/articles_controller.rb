class Api::V0::ArticlesController < ApplicationController
  before_action :set_default_response_format

  def index
    articles = Article.all
    render json: articles
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end

  protected

  def set_default_response_format
    request.format = :json
  end
end
