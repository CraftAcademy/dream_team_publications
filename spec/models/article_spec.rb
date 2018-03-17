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
    it { is_expected.to validate_presence_of :categories }
  end

  describe 'Associations' do
    it {is_expected.to have_many :comments}
  end

  describe 'DB Table' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:body).of_type(:text) }
  end
end
