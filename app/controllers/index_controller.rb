require 'news-api'
class IndexController < ApplicationController
  def index
    api_key = News.new("e9b2cff169de4096a9d34df4e3742ab2")
    @api_new_feed = api_key.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end
end
