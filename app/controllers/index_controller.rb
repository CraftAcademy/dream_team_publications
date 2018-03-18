require 'news-api'
class IndexController < ApplicationController
  def index
    api_key = News.new(ENV["SECRET_KEY_NEWS_API"])
    @api_new_feed = api_key.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end
end
