require 'news-api'
class IndexController < ApplicationController
  before_action :get_coordinates, only: [:index]
  def index
    news_api_client = News.new(Rails.application.credentials.news[:news_api_client])
    @api_news_feed = news_api_client.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end

  private

  def get_coordinates
    @coordinates = {}
    if cookies['geocoderLocation'].present?
      @coordinates = JSON.parse(cookies['geocoderLocation']).to_hash.symbolize_keys
      set_edition
      @geocoded = true
    else
      @geocoded = false
    end
  end

  def set_edition
    if country_code == "SE"
      @edition = 'Sweden edition'
    else
      @edition = 'World edition'
    end
  end
end
