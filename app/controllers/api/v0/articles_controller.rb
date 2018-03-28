class Api::V0::ArticlesController < ApplicationController
  def index
    render json: { message: 'Pong' }
 end
end
