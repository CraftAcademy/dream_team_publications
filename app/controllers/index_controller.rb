require 'news-api'
class IndexController < ApplicationController
  def index
    api_key = News.new(Rails.application.credentials.news[:news_api_key])
    @api_news_feed = api_key.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end
end
