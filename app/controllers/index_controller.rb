require 'news-api'
class IndexController < ApplicationController
  def index
    news_api_client = News.new(ENV['SECRET_KEY_NEWS_API'])
    @api_new_feed = news_api_client.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end
end
