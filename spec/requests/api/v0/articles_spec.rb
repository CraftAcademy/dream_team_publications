require 'rails_helper'

RSpec.describe Api::V0::ArticlesController, type: :request do
  let!(:article) { FactoryBot.create(:article) }

  it 'returns a list of articles' do
    get '/api/v0/articles'
    listing = JSON.parse(response.body)['data'][0]['attributes']
    expect(JSON.parse(response.body)['data'][0]['type']).to eq 'articles'
    expect(listing['title']). to eq article.title
    expect(listing['body']). to eq article.body
    expect(listing['categories']). to eq article.categories
    expect(listing['image']). to eq article.image
  end

  # describe 'GET /v0/articles' do
  #   it 'should return Articles' do
  #     get '/api/v0/articles'
  #
  #     json_response = JSON.parse(response.body)
  #     expect(json_response['message']).to eq 'Pong'
  #   end
  # end
end
