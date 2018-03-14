require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryBot.create(:article)).to be_valid
    end
  end

  describe 'DB Table' do
    it {is_expected.to have_db_column(:title).of_type(:string)}
    it {is_expected.to have_db_column(:body).of_type(:text)}
  end

  describe 'Attachment' do
    it 'is valid  ' do
      subject.image.attach(io: File.open(fixture_path + '/dummy_image.jpg'), filename: 'attachment.jpg', content_type: 'image/jpg')
      expect(subject.image).to be_attached
    end
  end
end
