require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(create(:comment)).to be_valid
    end
  end

  describe 'Associations' do
    it {is_expected.to belong_to :article}
  end

  describe 'DB Table' do
    it {is_expected.to have_db_column(:body).of_type(:text)}
  end
end
