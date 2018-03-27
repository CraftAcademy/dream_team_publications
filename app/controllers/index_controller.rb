#require 'news-api'
class IndexController < ApplicationController
  def index
    news_api_client = News.new(Rails.application.credentials.news[:news_api_client])
    @api_news_feed = news_api_client.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end
end
