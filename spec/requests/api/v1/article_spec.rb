RSpec.describe Api::V1::ArticlesController, type: :request do
  let!(:article) { create(:article) }
  describe 'GET /v1/articles' do
    let(:document) { JSON.parse(response.body) }
    let(:object) { document['data'].first }

    before do
      get '/api/v1/articles'
    end

    it 'has a title' do
      expect(object).to have_attribute(:title)
    end

    it 'has a body' do
      expect(object).to have_attribute(:body)
    end

    it 'has a image' do
      expect(object).to have_attribute(:image)
    end
  end
end
