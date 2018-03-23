require 'news-api'
class IndexController < ApplicationController
  before_action :get_coordinates, only: [:index]
  def index
    news_api_client = News.new(Rails.application.credentials.news[:news_api_client])
    @api_news_feed = news_api_client.get_top_headlines(category: 'technology', country: 'us', pageSize: 5)
  end

  private

  def set_edition
    if User.near([59.334591, 18.063240], 100).include? current_user
      @edition = 'Sweden Edition'
    else
      @edition = 'World Edition'
    end
  end

  def get_coordinates
    @coordinates = {}
    if cookies['geocoderLocation'].present?
      @coordinates = JSON.parse(cookies['geocoderLocation']).to_hash.symbolize_keys
      update_user_location
      set_edition
      @geocoded = true
    else
      @geocoded = false
    end
  end

  def update_user_location
    if current_user
      binding.pry
      current_user.latitude = @coordinates.values.first
      current_user.longitude = @coordinates.values.second
      current_user.save
      end
  end

end
