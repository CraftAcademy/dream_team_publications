class Api::V0::PingController < ApplicationController
  def index
    render json: { message: 'Pong' }
  end
end
