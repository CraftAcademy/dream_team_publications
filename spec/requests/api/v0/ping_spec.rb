require 'rails_helper'

RSpec.describe Api::V0::ArticlesController, type: :request do
  describe 'GET /v0/ping' do
    it 'should return Pong' do
      get '/api/v0/ping'

      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq 'Pong'
    end
  end
end
