#require 'rails_helper'

RSpec.describe Api::V0::ArticlesController, type: :request do
  let!(:article) { FactoryBot.create(:article) }

  it 'returns a specific article' do
    binding.pry
    get "/api/v0/articles/#{article.id}"
    listing = JSON.parse(response.body)['data'][0]['attributes']
    expect(JSON.parse(response.body)['data'][0]['type']).to eq 'articles'
    expect(listing['title']). to eq article.title
    expect(listing['body']). to eq article.body
    expect(listing['image']['name']). to eq article.image.name
  end
end

    # get "/api/v0/articles/#{article.id}"
