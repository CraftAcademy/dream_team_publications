require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(create(:article)).to be_valid
    end
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }
  end

  describe 'Attachment' do
    it 'is valid  ' do
      subject.image.attach(io: File.open(fixture_path + '/dummy_image.jpg'), filename: 'attachment.jpg', content_type: 'image/jpg')
      expect(subject.image).to be_attached
    end
  end

  describe 'Associations' do
    it {is_expected.to have_many :comments}
    it {is_expected.to have_and_belong_to_many :categories}
  end

  describe 'DB Table' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:body).of_type(:text) }
  end
end
