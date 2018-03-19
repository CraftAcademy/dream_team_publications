require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(create(:category)).to be_valid
    end
  end

  describe 'Associations' do
    it {is_expected.to have_and_belong_to_many :articles}
  end

  describe 'DB Table' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
  end
end
