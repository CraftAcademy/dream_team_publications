class Api::V0::ArticlesController < ApplicationController
  before_action :set_default_response_format

  def index
    articles = Article.all
    render json: article
  end

  protected

  def set_default_response_format
    request.format = :json
  end
end
