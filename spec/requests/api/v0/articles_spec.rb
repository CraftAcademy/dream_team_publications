require 'rails_helper'

RSpec.describe Api::V0::ArticlesController, type: :request do
  describe 'GET /v0/articles' do
    it 'should return Articles' do
      get '/api/v0/articles'

      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq Article.all
    end
  end
end
